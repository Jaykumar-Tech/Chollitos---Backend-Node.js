CommentModel = require("../models/comment.model");
const BlogModel = require("../models/blog.model");
const moment = require("moment");

exports.create = async (req, res) => {
    try {
        req.body.user_id = req.user.id;
        req.body.date = moment.utc().format("YYYY-MM-DD HH:mm:ss")
        var blog_id = await BlogModel.create(req.body.blog) ;
        req.body.blog_id = blog_id.insertId ;
        delete req.body.blog;
        var result = await CommentModel.create(req.body) ;
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
        var result = await CommentModel.get(req.params.id) ;
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

exports.find = async (req, res) => {
    try {
        var result = await CommentModel.find(req.body) ;
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