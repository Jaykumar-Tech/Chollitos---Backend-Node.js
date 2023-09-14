BannerModel = require("../models/banner.model");

exports.save = async (req, res) => {
    try {
        var result = await BannerModel.save(req.body) ;
        return res.json({
            message: "success",
            data: result.insertId
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.load = async (req, res) => {
    try {
        var result = await BannerModel.load() ;
        return res.json({
            message: "success",
            data: result
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}
