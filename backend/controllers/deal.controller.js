const DealModel = require("../models/deal.model");
const StoreModel = require("../models/store.model");
const XLSX = require('xlsx');
const moment = require('moment')

exports.create = async (req, res) => {
    try {
        req.body.price_new = parseFloat(req.body.price_new.replace(",","."))
        req.body.price_low = parseFloat(req.body.price_low.replace(",","."))
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
        var result = await DealModel.edit(req.body.id, req.body);
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
        if (result.vip && ( !req.user || req.user.role != 'vip' ) )
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

exports.remove = async (req, res) => {
    try {
        await DealModel.remove(req.params.id);
        return res.json({
            message: "deal deletion success"
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
    throw new Error({message: JSON.stringify(deals)})
    for (deal of deals) {
        var store_id;
        try {
            var result = await StoreModel.getByName(deal.store);
            store_id = result.id
        } catch (error) {
            var result = await StoreModel.create({ name: deal.store });
            store_id = result.insertId;
        }
        DealModel.create({
            title: deal.title,
            description: deal.description,
            store_id: store_id,
            price_new: parseFloat(deal.price_old.replace(",",".")),
            price_low: parseFloat(deal.price_new.replace(",",".")),
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

