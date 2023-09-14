const client = require("./connection");

// constructor
const Banner = function (banner) {
};

Banner.save = (data) => {
    return new Promise((resolve, reject)=>{
        client.query("UPDATE banner SET ? WHERE id=1",
        [data], (err, row) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(row);
        });
    })
};

Banner.load = () => {
    return new Promise((resolve, reject) => {
        client.query("SELECT title, content FROM banner WHERE id = 1", 
         (err, rows) => {
            if (err) {
                reject(err);
                return;
            } 
            if ( rows.length == 0 ) {
                reject({message: "Banner Not Found"})
                return
            }
            resolve(rows[0]);
        });
    });
};

module.exports = Banner;