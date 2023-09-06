LikeModel = require("../models/like.model");
DealModel = require('../models/deal.model')
CommentModel = require('../models/comment.model')

exports.create = async (req, res) => {
    try {
        if ( req.body.type=='deal') {
            var deal = await DealModel.get(req.body.dest_id) ;
            if ( deal.user_id == req.body.user_id ) {
                throw new Error("You can't vote your deal")
            }
        } 
        if ( req.body.type=='comment') {
            var comment = await CommentModel.get(req.body.dest_id) ;
            if ( comment.user_id == req.body.user_id ) {
                throw new Error("You can't vote your comment")
            }
        } 
        var result = await LikeModel.create(req.body) ;
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

exports.find = async (req, res) => {
    try {
        var result = await LikeModel.find(req.body) ;
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

exports.get = async (req, res) => {
    try {
        var result = await LikeModel.get(req.body.type, req.body.dest_id) ;
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