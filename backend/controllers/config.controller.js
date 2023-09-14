ConfigModel = require("../models/config.model");

exports.get = async (req, res) => {
    try {
        var result = await ConfigModel.get() ;
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

exports.set = async (req, res) => {
    try {
        var result = await ConfigModel.set(req.body) ;
        return res.json({
            message: "success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}