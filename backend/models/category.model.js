const client = require("./connection");

// constructor
const Category = function (category) {
};

Category.create = (data) => {
    return new Promise((resolve, reject)=>{
        client.query("INSERT INTO category SET ?",
        data, (err, row) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(row);
        });
    })
};

Category.getChildren = (id) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM category WHERE parent_id=?", 
        [id], (err, rows) => {
            if (err) {
                reject(err);
                return;
            } 
            if ( rows.changedRows < 1 ) {
                reject({message: "Not updated"})
                return;
            }
            resolve(rows);
        });
    });
};

Category.getAll = () => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM category ORDER BY name",
         (err, rows) => {
            if (err) {
                reject(err);
                return;
            } 
            if ( rows.length == 0 ) {
                reject({message: "not found"})
                return
            }
            resolve(rows);
        });
    });
};

Category.get = (id) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM category WHERE id = ?",
        [id],
         (err, rows) => {
            if (err) {
                reject(err);
                return;
            } 
            if ( rows.length == 0 ) {
                reject({message: "Category Not Found"})
                return
            }
            resolve(rows);
        });
    });
}

Category.getBySlug = (slug) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM category WHERE slug = ?",
        [slug],
         (err, rows) => {
            if (err) {
                reject(err);
                return;
            } 
            if ( rows.length == 0 ) {
                reject({message: "Category Not Found"})
                return
            }
            resolve(rows);
        });
    });
}

Category.changeStatus = (id, status) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE category SET status = ? WHERE id = ?", 
        [status, id],
         (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.affectedRows == 0) {
                reject({ message: "Update Failed" });
                return;
            } else {
                resolve(res);
            }
        });
    })
};

Category.update = (data) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE category SET ? WHERE id = ?", 
        [data, data.id],
         (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.affectedRows == 0) {
                reject({ message: "Update Failed" });
                return;
            } else {
                resolve(res);
            }
        });
    })
};

module.exports = Category;