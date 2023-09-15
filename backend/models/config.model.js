const client = require("./connection");

// constructor
const Config = function (config) {
};

Config.get = () => {
    return new Promise((resolve, reject)=>{
        client.query("SELECT site_title, welcome_email, language, popular_shops, popular_categories, email, password FROM config WHERE id=1",
        (err, rows) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(rows[0]);
        });
    })
};

Config.set = (data) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE config SET ? WHERE id = 1", 
         [data], (err, row) => {
            if (err) {
                reject(err);
                return;
            } 
            resolve(row);
        });
    });
};

module.exports = Config;