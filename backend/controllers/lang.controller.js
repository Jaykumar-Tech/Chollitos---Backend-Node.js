LangModel = require("../models/lang.model");

exports.get = async (req, res) => {
    try {
        var result = await LangModel.get() ;
        return res.json({
            message: "success",
            data: result
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message,
            data: req.body
        })
    }
}

exports.change = async (req, res) => {
    try {
        var result = await LangModel.change(req.body.lang) 
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