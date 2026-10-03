module.exports = {
  apps: [{
    name: "valoria-store",
    script: "./server.js",
    cwd: __dirname,
    env: {
      PORT: 3000,
      ADMIN_EMAIL: "Alone@admin.com",
      DB_HOST: "127.0.0.1",
      DB_PORT: 3306,
      DB_NAME: "play",
      DB_USER: "root",
      DB_PASSWORD: "PUT_YOUR_MYSQL_PASSWORD_HERE"
    }
  }]
};
