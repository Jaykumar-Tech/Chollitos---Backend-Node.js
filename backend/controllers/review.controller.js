ReviewModel = require("../models/review.model");

exports.create = async (req, res) => {
    try {
        var result = await ReviewModel.create(req.body);
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

exports.get = async (req, res) => {
    try {
        var result = await ReviewModel.get(req.params.store_id);
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
