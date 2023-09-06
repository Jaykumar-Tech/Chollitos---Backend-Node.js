const client = require("./connection");

// constructor
const Comment = function () {
};

Comment.create = (data) => {
    return new Promise((resolve, reject) => {
        client.query("INSERT INTO comment SET ?",
            [data], (err, row) => {
                if (err) {
                    reject(err);
                    return;
                }
                resolve(row);
            });
    })
};

Comment.get = (id) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM comment WHERE id=?", [id], (err, rows) => {
            if (err) {
                reject(err);
                return;
            }
            if (rows.length == 0) {
                reject({ message: "Comment Not Found" })
                return
            }
            resolve(rows[0]);
        });
    });
};

Comment.find = (data) => {
    return new Promise((resolve, reject) => {
        client.query(`SELECT comment.*, blog.html as blog, 
        CASE
            WHEN ISNULL(C.count_dislike) AND ISNULL(B.count_like) THEN 0
            WHEN ISNULL(C.count_dislike) THEN B.count_like
            WHEN ISNULL(B.count_like) THEN -1 * C.count_dislike
            ELSE B.count_like - C.count_dislike
        END AS cnt_like 
        FROM comment
        LEFT JOIN
        (select dest_id, count(*) as count_like
        From likes
        where type="comment" AND is_like=1
        GROUP BY dest_id) B 
        ON comment.id = B.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_dislike
        From likes
        where type="comment" AND is_like=0
        GROUP BY dest_id) C 
        ON comment.id = C.dest_id
        LEFT JOIN
        blog 
        ON blog.id = comment.blog_id
         WHERE comment.type=? AND comment.dest_id=? ORDER BY date`,
            [data.type, data.dest_id], (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length == 0) {
                    reject({ message: "Comment Not Found" })
                    return
                }
                resolve(rows);
            });
    });
};

module.exports = Comment;