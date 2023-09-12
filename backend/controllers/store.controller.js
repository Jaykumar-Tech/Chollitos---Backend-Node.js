StoreModel = require("../models/store.model");
BlogModel = require("../models/blog.model");

exports.create = async (req, res) => {
    try {
        var blog_id = await BlogModel.create(req.body.blog);
        delete req.body.blog
        req.body.info_html = blog_id;
        req.body.status = 1 
        var result = await StoreModel.create(req.body);
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

exports.edit = async (req, res) => {
    try {
        var store = await StoreModel.get(req.body.id)
        await BlogModel.edit(store.info_html, req.body.blog)
        req.body.info_html = store.info_html
        delete req.body.blog
        var result = await StoreModel.edit(req.body.id, req.body)
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
        var result = await StoreModel.get(req.params.id);
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

exports.getAll = async (req, res) => {
    try {
        var result = await StoreModel.getAll();
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

exports.getByName = async (req, res) => {
    try {
        var result = await StoreModel.getByName(req.params.name);
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

exports.activate = async ( req, res ) => {
    try {
        await StoreModel.changeStatus(req.params.id, 1)
        return res.json({
            message: "Activating store success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.deactivate = async ( req, res ) => {
    try {
        await StoreModel.changeStatus(req.params.id, 0)
        return res.json({
            message: "Deactivating store success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}
