const randomUtil = require("../utils/random.util");
const fs = require('fs')
const urlConfig = require("../config/url.config")
const sharp = require('sharp');
const sizeOf = require('image-size');
const Config = require("../models/config.model");

exports.upload = async (req, res) => {
    try {
        console.log(req.file);
        const newName = randomUtil.generateLongNumber();

        _size = sizeOf(req.file.path);
        let maxSize = Math.max(_size.height, _size.width) ;
        if ( maxSize >= 300 ) {
            _size.width *= 300.0 / maxSize ;
            _size.height *= 300.0 / maxSize ;
        }
        sharp(req.file.path)
            .resize(Math.floor(_size.width), Math.floor(_size.height))
            .toFile(__dirname + "/../resource/" + newName, (err, info) => {
                if (err) {
                } else {
                    fs.unlinkSync(req.file.path);
                }
            });
        return res.json({
            url: `${urlConfig.SERVER_URL}api/resource/get/` + newName
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.get = async (req, res) => {
    try {
        const stream = fs.createReadStream(__dirname + "/../resource/" + req.params.id); // Replace with the actual file path
        // Pipe the stream to the response object
        stream.pipe(res);
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.receiveSMS = async(req, res) => {{
    try {
        const params = Object.assign(req.query, req.body)
        Config.set({
            sms: JSON.stringify(params)
        });
        return res.json("thanks");
    } catch(error) {
        return res.json("thanks");
    }
}}