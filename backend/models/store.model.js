const client = require("./connection");

// constructor
const Store = function (store) {
    this.html = store.html
};

Store.create = (data) => {
    data.status = 1 ;
    return new Promise((resolve, reject) => {
        client.query("INSERT INTO store SET ?",
            data, (err, row) => {
                if (err) {
                    reject(err);
                    return;
                }
                resolve(row);
            });
    })
};

Store.edit = (id, data) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE store SET ? WHERE id=?",
            [data, id], (err, row) => {
                if (err) {
                    reject(err);
                    return;
                }
                resolve(row);
            });
    })
};

Store.get = (id) => {
    return new Promise((resolve, reject) => {
        client.query(`SELECT store.*, D.cnt_deal , S.cnt_discount, blog.html as blog
        FROM store
        LEFT JOIN
        (SELECT count(store_id) as cnt_deal, store_id
        FROM deal
        WHERE type="deal"
        GROUP BY store_id) D
        ON D.store_id=store.id 
        LEFT JOIN
        (SELECT count(store_id) as cnt_discount, store_id
        FROM deal
        WHERE type!="deal"
        GROUP BY store_id) S
        ON S.store_id=store.id 
        LEFT JOIN
        blog
        ON blog.id = store.info_html
        WHERE store.id=?`, [id], (err, rows) => {
            if (err) {
                reject(err);
                return;
            }
            if (rows.length == 0) {
                reject({ message: "Store Not Found" })
                return
            }
            resolve(rows[0]);
        });
    });
};

Store.getAll = () => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM store ORDER BY name asc", (err, rows) => {
            if (err) {
                reject(err);
                return;
            }
            if (rows.length == 0) {
                reject({ message: "not found" })
                return
            }
            resolve(rows);
        });
    });
};

Store.getByName = (name) => {
    const vip = name.split("_").length > 1;
    name = name.split("_")[0] ;
    return new Promise((resolve, reject) => {
        client.query(`SELECT store.*, D.cnt_deal , S.cnt_discount
        FROM store
        LEFT JOIN
        (SELECT count(store_id) as cnt_deal, store_id
        FROM deal
        WHERE type="deal" ${!vip? " AND vip=0": ""}
        GROUP BY store_id) D
        ON D.store_id=store.id 
        LEFT JOIN
        (SELECT count(store_id) as cnt_discount, store_id
        FROM deal
        WHERE type!="deal" ${!vip? " AND vip=0": ""}
        GROUP BY store_id) S
        ON S.store_id=store.id 
        LEFT JOIN
        blog
        ON blog.id = store.info_html
        WHERE store.name=?`, [name],
            (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length == 0) {
                    reject({ message: "Store Not Found" })
                    return
                }
                resolve(rows[0]);
            });
    });
};

Store.remove = (id) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE store SET status = 0 WHERE id = ?", id, (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.affectedRows == 0) {
                reject({ message: "not_found" });
                return;
            } else {
                resolve(res);
            }
        });
    })
};

Store.changeStatus = (id, status) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE store SET status = ? WHERE id = ?", 
        [status, id], 
        (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.affectedRows == 0) {
                reject({ message: "Store not found" });
                return;
            } else {
                resolve(res);
            }
        });
    })
};

module.exports = Store;