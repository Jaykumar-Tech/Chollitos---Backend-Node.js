CategoryModel = require("../models/category.model");

exports.create = async (req, res) => {
    try {
        req.body.status = 1
        var result = await CategoryModel.create(req.body) ;
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

exports.getChildren = async (req, res) => {
    try {
        var result = await CategoryModel.getChildren(req.params.id) ;
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
        var result = await CategoryModel.getAll() ;
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

exports.getBySlug = async (req, res) => {
    try {
        var result = await CategoryModel.getBySlug(req.params.slug_id) ;
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

exports.getById = async (req, res) => {
    try {
        var result = await CategoryModel.get(req.params.id) ;
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

exports.deactivate = async ( req, res ) => {
    try {
        await CategoryModel.changeStatus(req.params.id, 0);
        return res.json({
            message: "category deletion success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.activate = async ( req, res ) => {
    try {
        await CategoryModel.changeStatus(req.params.id, 1);
        return res.json({
            message: "category deletion success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}
