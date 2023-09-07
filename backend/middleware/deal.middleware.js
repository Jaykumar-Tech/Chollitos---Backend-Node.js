exports.dealFilter = async (req, res, next) => {
    if (!req.body.hasOwnProperty("type"))
        req.body.type = "all";
    if (!req.body.hasOwnProperty("store_id"))
        req.body.store_id = -1;
    if (!req.body.hasOwnProperty("category_id"))
        req.body.category_id = [];
    if (!req.body.hasOwnProperty("feature"))
        req.body.feature = "new";
    if (!req.body.hasOwnProperty("vip"))
        req.body.vip = 0;
    next();
}

exports.dealCreate = async (req, res, next) => {
    if (!req.body.hasOwnProperty("expires"))
        req.body.expires = "2100-12-31";
    if (req.body.hasOwnProperty("price_old")) {
        req.body.price_low = req.body.price_new;
        req.body.price_new = req.body.price_old;
        delete req.body.price_old;
    }
    if (req.body.hasOwnProperty("start_date"))
        delete req.body.start_date;
    next();
}