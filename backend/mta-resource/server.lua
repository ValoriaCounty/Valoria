
local db = nil

local function connectDB()
    if isElement(db) then return true end
    local dsn = string.format("dbname=%s;host=%s;port=%d;charset=%s",
        Config.database, Config.host, Config.port, Config.charset)
    db = dbConnect("mysql", dsn, Config.username, Config.password, "share=1")
    if not db then
        outputDebugString("[VALORIA STORE] MySQL connection failed.", 1)
        return false
    end
    outputDebugString("[VALORIA STORE] MySQL connected.")
    return true
end

local function q(sql, ...)
    if not connectDB() then return false end
    local h = dbQuery(db, sql, ...)
    return dbPoll(h, -1)
end

local function markFailed(orderId, reason)
    dbExec(db, "UPDATE valoria_orders SET status='DELIVERY_FAILED', delivery_result=?, updated_at=NOW() WHERE order_id=?",
        reason, orderId)
    dbExec(db, "INSERT INTO valoria_order_logs(order_id,action,actor,details) VALUES(?,?,?,?)",
        orderId, "DELIVERY_FAILED", "MTA", reason)
end

local function deliverCredit(order, item)
    local amount = tonumber(item.delivery_value)
    if not amount or amount <= 0 then return false, "رصيد غير صالح" end
    dbExec(db, "UPDATE accounts SET credits=credits+? WHERE id=?", amount, order.account_id)
    return true, "تم إضافة "..amount.." رصيد للموقع"
end

local function deliverVehicle(order, item)
    local shopId = tonumber(item.delivery_value)
    if not shopId then return false, "لم يتم تحديد vehicles_shop.id للسيارة "..tostring(item.name) end

    local rows = q("SELECT id,vehmtamodel FROM vehicles_shop WHERE id=? AND enabled=1 LIMIT 1", shopId)
    if not rows or not rows[1] then return false, "السيارة غير موجودة في vehicles_shop" end
    local model = tonumber(rows[1].vehmtamodel)
    if not model then return false, "vehmtamodel غير صالح" end

    local ok = dbExec(db,
        [[INSERT INTO vehicles
        (model,x,y,z,rotx,roty,rotz,currx,curry,currz,currrx,currry,currrz,
         fuel,engine,locked,lights,sirens,paintjob,hp,color1,color2,color3,color4,
         plate,faction,owner,job,tintedwindows,dimension,interior,currdimension,currinterior,
         enginebroke,handbrake,upgrades,wheelStates,panelStates,doorStates,odometer,
         headlights,variant1,variant2,description1,description2,description3,description4,description5,
         deleted,chopped,stolen,lastUsed,creationDate,createdBy,registered,show_plate,show_vin,vehicle_shop_id)
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)]],
        model,0,0,0,0,0,0,0,0,0,0,0,0,
        100,0,0,1,0,0,1000,'[[255,255,255]]','[[255,255,255]]','[[0,0,0]]','[[0,0,0]]',
        '',-1,order.character_id,-1,0,0,0,0,0,0,0,
        '[ [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ] ]',
        '[ [ 0,0,0,0 ] ]','[ [ 0,0,0,0,0,0,0 ] ]','[ [ 0,0,0,0,0,0 ] ]',
        0,'[ [ 255,255,255 ] ]',255,255,'','','','','',
        0,0,0,os.date("%Y-%m-%d %H:%M:%S"),os.date("%Y-%m-%d %H:%M:%S"),0,1,1,1,shopId
    )
    if not ok then return false, "فشل إدخال السيارة في vehicles" end
    return true, "تمت إضافة السيارة"
end

local function deliverManual(order, item)
    -- The exact game resource for each service varies. We safely queue it
    -- into the existing pending_shop_orders table instead of guessing a
    -- destructive action.
    local ok = dbExec(db,
        "INSERT INTO pending_shop_orders(user_id,product_type,product_value,product_name,status) VALUES(?,?,?,?,0)",
        order.account_id, item.category or "service", tostring(item.delivery_value or item.id), item.name)
    if not ok then return false, "فشل وضع الخدمة في pending_shop_orders" end
    return true, "تم إرسال الخدمة إلى طابور التسليم"
end

local function processOrder(order)
    local items = fromJSON(order.items_json or "[]")
    if type(items) ~= "table" then
        markFailed(order.order_id, "items_json غير صالح")
        return
    end

    local results = {}
    for _, item in ipairs(items) do
        local p = q("SELECT product_id,delivery_type,delivery_value,name,category FROM valoria_products WHERE product_id=? AND enabled=1 LIMIT 1",
            item.id)
        if not p or not p[1] then
            markFailed(order.order_id, "المنتج غير موجود: "..tostring(item.id))
            return
        end

        local product = {
            id=p[1].product_id, delivery_type=p[1].delivery_type,
            delivery_value=p[1].delivery_value, name=p[1].name, category=p[1].category
        }
        local ok, result
        if product.delivery_type == "credit" then
            ok,result = deliverCredit(order,product)
        elseif product.delivery_type == "vehicle" then
            ok,result = deliverVehicle(order,product)
        else
            ok,result = deliverManual(order,product)
        end

        if not ok then
            markFailed(order.order_id, result)
            return
        end
        table.insert(results, result)
    end

    local final = table.concat(results, " | ")
    dbExec(db,
        "UPDATE valoria_orders SET status='DELIVERED',delivery_result=?,delivered_at=NOW(),updated_at=NOW() WHERE order_id=?",
        final, order.order_id)
    dbExec(db,
        "INSERT INTO valoria_order_logs(order_id,action,actor,details) VALUES(?,?,?,?)",
        order.order_id, "DELIVERED", "MTA", final)
    outputDebugString("[VALORIA STORE] Delivered "..order.order_id)
end

local function poll()
    if not connectDB() then return end
    local rows = q("SELECT * FROM valoria_orders WHERE status='APPROVED' ORDER BY id ASC LIMIT 20")
    if not rows then return end
    for _, order in ipairs(rows) do
        processOrder(order)
    end
end

addEventHandler("onResourceStart", resourceRoot, function()
    connectDB()
    setTimer(poll, Config.pollMs, 0)
    outputDebugString("[VALORIA STORE] Resource started.")
end)
