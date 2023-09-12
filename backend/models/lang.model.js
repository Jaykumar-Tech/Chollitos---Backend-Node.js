const client = require("./connection");

// constructor
const Lang = function (lang) {
};

Lang.get = () => {
    return new Promise((resolve, reject) => {
        client.query("SELECT name FROM language WHERE id=1",
            (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length > 0) {
                    resolve({message: "Already Exist"});
                    return;
                }
                reject({
                    message: "No Exist"
                })
            })
    })
}

Lang.change = (lang) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE language SET name=?",
            [lang], (err, row) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (row.affectedRows == 0) {
                    reject({ message: "not found" })
                    return
                }
                resolve(row);
            });
    });
};

module.exports = Like;