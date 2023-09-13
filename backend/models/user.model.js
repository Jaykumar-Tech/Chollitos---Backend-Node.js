const client = require("./connection");
const cacheUtil = require('../utils/cache.util');
// constructor
const User = function (user) {
    this.username = user.username;
    this.password = user.password;
    this.email = user.email;
    this.role = user.role;
    this.status = user.status;
    this.created_at = user.created_at;
    this.updated_at = user.updated_at;
};
User.create = (newUser) => {
    return new Promise((resolve, reject) => {
        client.query("INSERT INTO user SET ?", newUser, (err, res) => {
            if (err) {
                reject(err);
                return;
            } else {
                resolve({ id: res.insertId, ...newUser });
            }
        });
    })
};
User.findById = (id) => {
    return new Promise((resolve, reject) => {
        client.query(`SELECT * FROM user WHERE id = ${id} and status!=-1`, (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.length) {
                resolve(res[0]);
                return;
            } else
                reject({ message: "User Not Found" });
        });
    })
};
User.findByEmail = (email) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM user WHERE email = ?", email, (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.length) {
                resolve(res[0]);
                return;
            } else {
                reject({ message: "User Email Not Found" });
            }
        });
    })
};
User.getAll = () => {
    return new Promise((resolve, reject) => {
        let query = "SELECT * FROM user WHERE status!= -1";
        client.query(query, (err, res) => {
            if (err) {
                reject(err);
                return;
            } else {
                resolve(res);
            }
        });
    })
};
User.updateRole = (id, role) => {
    return new Promise((resolve, reject) => {
        client.query(
            "UPDATE user SET role = ? WHERE id = ?",
            [role, id],
            (err, res) => {
                if (err) {
                    reject(err);
                    return;
                } else if (res.affectedRows == 0) {
                    reject({ message: "not_found" });
                    return;
                } else {
                    resolve("success")
                }
            }
        );
    })
};
User.changeStatusById = (id, status) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE user SET status = ? WHERE id = ?", 
        [status, id], (err, res) => {
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
User.changeStatusByEmail = (email, status) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE user set status=? WHERE email = ?",
        [status, email], 
        (err, res) => {
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
User.deleteByEmail = (email) => {
    return new Promise((resolve, reject) => {
        client.query("DELETE FROM user WHERE email = ?",
        [email], 
        (err, res) => {
            if (err) {
                reject(err);
                return;
            } else {
                resolve(res);
            }
        });
    })
};
User.saveCode = (email, code) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE user SET code = ? WHERE email = ? ",
            [code, email], (err, user) => {
                if (err) {
                    reject(err);
                    return;
                } else {
                    resolve(user);
                    return;
                }
            })
    })
}
User.verifyCode = (email, code) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM user WHERE email = ?", email, (err, res) => {
            if (err) {
                reject(err);
                return;
            } else if (res.length) {
                var user = res[0];
                if (user.code != code) {
                    reject({ message: "not match" })
                    return;
                }
                else {
                    resolve("verified")
                }
            } else {
                // not found User with the id
                reject({ message: "not_found" });
            }
        });
    })
}
User.resetPassword = (email, password) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE user SET password=? WHERE email=?",
            [password, email], (err, row) => {
                if (err) {
                    reject(err);
                    return;
                } else {
                    resolve(row)
                    return;
                }
            })
    })
}
User.setVipStatus = (id, status) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE user SET vip=? WHERE id=?",
            [status, id], (err, row) => {
                if (err) {
                    reject(err);
                    return;
                } else if ( row.affectedRows == 0 ) {
                    reject({
                        message: "User not found"
                    })
                }
                else {
                    resolve(row)
                    return;
                }
            })
    })
}

module.exports = User;