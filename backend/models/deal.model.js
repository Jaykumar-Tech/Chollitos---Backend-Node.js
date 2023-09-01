const client = require("./connection");

// constructor
const Deal = function (deal) {
};

Deal.create = (data) => {
    data.status = 1;
    return new Promise((resolve, reject) => {
        client.query("INSERT INTO deal SET ?",
            [data], (err, row) => {
                if (err) {
                    reject(err);
                    return;
                }
                resolve(row);
            });
    })
};

Deal.edit = (id, data) => {
    return new Promise((resolve, reject) => {
        client.query("UPDATE deal SET ? WHERE id=?",
            [data, id], (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.changedRows < 1) {
                    reject({ message: "Not updated" })
                    return;
                }
                resolve(rows);
            });
    });
};

const buildFilter = (data) => {
    var filter = [] ;
    filter.push("start_date <= CURDATE()")
    if (data.type == "free") filter.push(`type='free'`)
    if (data.type == "deal") filter.push(`type='deal'`)
    if (data.type == "discount") filter.push(`type!='deal'`)
    if (data.vip == 1) filter.push(`vip=1`)
    else if ( data.vip == 0 ) filter.push("vip=0")
    if (data.store_id != -1) filter.push(`store_id=${data.store_id}`);
    if (data.category_id.length > 0) filter.push(`category_id IN (${data.category_id.join(",")})`);
    if (data.feature == "popular") filter.push(`(
        CASE
            WHEN ISNULL(C.count_dislike) THEN B.count_like
            WHEN ISNULL(B.count_like) THEN -1 * C.count_dislike
            ELSE B.count_like - C.count_dislike
        END
    ) > 0`);
    if (data.feature == "highlight") filter.push(`(
        CASE
            WHEN ISNULL(C.count_dislike) THEN B.count_like
            WHEN ISNULL(B.count_like) THEN -1 * C.count_dislike
            ELSE B.count_like - C.count_dislike
        END
    ) > 1`);

    filter = filter.join(" AND ");
    return filter ;
}
// "id": 76,
//             "title": "lkea gift card of 50$ for only 43.11 in Eneba",
//             "description": "Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.",
//             "type": "free",
//             "price_new": null,
//             "price_low": null,
//             "price_ship": "0.00",
//             "store_id": 10,
//             "deal_url": "https://www.amazon.es/deal/13545001",
//             "image_url": "https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718",
//             "user_id": 2,
//             "category_id": 10,
//             "status": 1,
//             "start_date": "2023-08-23T16:00:00.000Z",
//             "expires": "2023-08-31T16:00:00.000Z",
//             "count_of_used": 1,
//             "vip": 1,
//             "code": "CODE EXP",
//             "username": "user2",
//             "avatar": "",
//             "storename": "banggood",
//             "category_slug": "toys",
//             "cnt_comment": 0,
//             "cnt_like": null
Deal.find = (data) => {
    var start_at = data.start_at;
    var length = data.length;
    var filter = buildFilter(data) ;
    return new Promise((resolve, reject) => {
        client.query(`SELECT deal.id , deal.title, deal.type, 
        deal.price_new, deal.price_low, deal.price_ship, deal.store_id, deal.deal_url, deal.image_url,
        deal.user_id, deal.category_id, deal.status, deal.start_date, deal.expires, deal.count_of_used, deal.vip, deal.code
        , user.username as username, user.avatar as avatar, store.name as storename, category.slug as category_slug,
        CASE
            WHEN ISNULL(A.count_comment) THEN 0
            ELSE A.count_comment
        END AS cnt_comment,
        CASE
            WHEN ISNULL(C.count_dislike) THEN B.count_like
            WHEN ISNULL(B.count_like) THEN -1 * C.count_dislike
            ELSE B.count_like - C.count_dislike
        END AS cnt_like
        FROM deal 
        LEFT JOIN 
        (Select dest_id, count(*) as count_comment
        FROM comment   
        where type='deal'
        GROUP BY dest_id) A ON deal.id = A.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_like
        From likes
        where type="deal" AND is_like=1
        GROUP BY dest_id) B 
        ON deal.id = B.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_dislike
        From likes
        where type="deal" AND is_like=0
        GROUP BY dest_id) C 
        ON deal.id = C.dest_id
        LEFT JOIN
        user 
        ON deal.user_id = user.id
        LEFT JOIN
        store 
        ON deal.store_id = store.id
        LEFT JOIN
        category
        on category.id = deal.category_id
        WHERE ${filter} ORDER BY start_date DESC LIMIT ? OFFSET ?;`,
            [length, start_at],
            (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length == 0) {
                    reject({ message: "deals not found" })
                    return
                }
                resolve(rows);
            });
    });
}

Deal.count = (data) => {
    var filter = buildFilter(data) ;
    return new Promise((resolve, reject) => {
        client.query(`SELECT count(*) as cnt_deal
        FROM deal 
        LEFT JOIN 
        (Select dest_id, count(*) as count_comment
        FROM comment   
        where type='deal'
        GROUP BY dest_id) A ON deal.id = A.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_like
        From likes
        where type="deal" AND is_like=1
        GROUP BY dest_id) B 
        ON deal.id = B.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_dislike
        From likes
        where type="deal" AND is_like=0
        GROUP BY dest_id) C 
        ON deal.id = C.dest_id
        WHERE ${filter};`,
            (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length == 0) {
                    reject({ message: "deals not found" })
                    return
                }
                resolve(rows);
            });
    });
};

Deal.get = (id) => {
    return new Promise((resolve, reject) => {
        client.query(`SELECT deal.*, user.username as username, user.avatar as avatar, user.level as level, store.name as storename , category.slug as category_slug,
        CASE
            WHEN ISNULL(A.count_comment) THEN 0
            ELSE A.count_comment
        END AS cnt_comment,
        CASE
            WHEN ISNULL(C.count_dislike) THEN B.count_like
            WHEN ISNULL(B.count_like) THEN -1 * C.count_dislike
            ELSE B.count_like - C.count_dislike
        END AS cnt_like
        FROM deal 
        LEFT JOIN 
        (Select dest_id, count(*) as count_comment
        FROM comment   
        where type='deal'
        GROUP BY dest_id) A ON deal.id = A.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_like
        From likes
        where type="deal" AND is_like=1
        GROUP BY dest_id) B 
        ON deal.id = B.dest_id
        LEFT JOIN
        (select dest_id, count(*) as count_dislike
        From likes
        where type="deal" AND is_like=0
        GROUP BY dest_id) C 
        ON deal.id = C.dest_id
        LEFT JOIN 
        user
        on user.id = deal.user_id
        LEFT JOIN
        store
        on store.id = deal.store_id
        LEFT JOIN
        category
        on category.id = deal.category_id
        WHERE deal.id=?`,
            [id],
            (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length == 0) {
                    reject({ message: "Deal Not Found" })
                    return
                }
                resolve(rows[0]);
            });
    });
};

Deal.useCode = (id) => {
    return new Promise((resolve, reject) => {
        client.query("SELECT * FROM deal WHERE id=?",
            [id],
            (err, rows) => {
                if (err) {
                    reject(err);
                    return;
                }
                if (rows.length == 0) {
                    reject({ message: "Deal Not Found" })
                    return
                }
                let countOfUsed = rows[0].count_of_used + 1;
                client.query("UPDATE deal SET count_of_used=? WHERE id=?",
                    [countOfUsed, id], (err, row) => {
                        if (err) {
                            reject(err);
                            return;
                        }
                        resolve(row)
                    })
            });
    });
};

module.exports = Deal;