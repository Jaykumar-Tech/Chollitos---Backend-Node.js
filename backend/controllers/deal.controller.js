const DealModel = require("../models/deal.model");
const StoreModel = require("../models/store.model");
const XLSX = require('xlsx');
const moment = require('moment')

exports.create = async (req, res) => {
    try {
        if (typeof req.body.price_new == "string")
            req.body.price_new = parseFloat(req.body.price_new.replace(",", "."))
        if (typeof req.body.price_low == "string")
            req.body.price_low = parseFloat(req.body.price_low.replace(",", "."))
        req.body.status = (req.user.role === 'admin')
        var result = await DealModel.create(req.body);
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
        if (typeof req.body.price_new == "string")
            req.body.price_new = parseFloat(req.body.price_new.replace(",", "."))
        if (typeof req.body.price_low == "string")
            req.body.price_low = parseFloat(req.body.price_low.replace(",", "."))
        delete req.body.user_id
        req.body.id = req.body.deal_id
        delete req.body.deal_id
        if ( req.user.role != 'admin' )
            req.body.status = 0
        var result = await DealModel.edit(req.body);
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

exports.count = async (req, res) => {
    try {
        var result = await DealModel.count(req.body);
        return res.json({
            message: "success",
            data: result[0].cnt_deal
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.find = async (req, res) => {
    try {
        req.body.admin = (req.user.role == 'admin')
        var result = await DealModel.find(req.body);
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
        var result = await DealModel.get(req.params.id);
        if (result.vip && (!req.user || req.user.role == 'customer'))
            return res.status(400).send({
                message: "Unauthorized"
            })
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

exports.useCode = async (req, res) => {
    try {
        var result = await DealModel.getCode(req.params.id);
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

exports.upload = async (req, res) => {
    try {
        console.log(req.file.path)
        var result = await load(req.file.path, req.user.id);
        return res.json({
            message: "success",
            data: result + " deals created"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.delete = async (req, res) => {
    try {
        await DealModel.delete(req.params.id);
        return res.json({
            message: "Deleting deal success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.activate = async (req, res) => {
    try {
        await DealModel.changeStatus(req.params.id, 1);
        return res.json({
            message: "Activating deal success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.deactivate = async (req, res) => {
    try {
        await DealModel.changeStatus(req.params.id, 0);
        return res.json({
            message: "Deactivating deal success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

const load = async (filepath, user_id) => {
    const workbook = XLSX.readFile(filepath);
    const worksheet = workbook.Sheets['Sheet1']; // Replace 'Sheet1' with the actual sheet name
    const deals = XLSX.utils.sheet_to_json(worksheet);
    for (deal of deals) {
        var store_id;
        try {
            var result = await StoreModel.getByName(deal.store);
            store_id = result.id
        } catch (error) {
            var result = await StoreModel.create({ name: deal.store });
            store_id = result.insertId;
        }
        if (typeof deal.price_old == "string")
            deal.price_old = parseFloat(deal.price_old.replace(",", "."));
        if (typeof deal.price_new == "string")
            deal.price_new = parseFloat(deal.price_new.replace(",", "."));
        DealModel.create({
            title: deal.title,
            description: deal.description,
            store_id: store_id,
            price_new: deal.price_old,
            price_low: deal.price_new,
            image_urls: JSON.stringify([deal.image_url]),
            deal_url: deal.deal_url,
            category_id: -1,
            user_id: user_id,
            type: deal.type,
            vip: deal.vip,
            start_date: moment(new Date(new Date().toUTCString())).format("YYYY-MM-DD HH:mm:ss"),
            expires: "9999-12-31"
        })
    }
    return deals.length;
}

exports.setVip = async ( req, res ) => {
    try {
        await DealModel.setVipStatus(req.params.id, 1);
        return res.json({
            message: "success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.getAll = async ( req, res ) => {
    try {
        var result = await DealModel.getAll(req.user.id, req.user.role)
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

exports.unsetVip = async ( req, res ) => {
    try {
        await DealModel.setVipStatus(req.params.id, 0);
        return res.json({
            message: "success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

