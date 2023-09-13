const Joi = require('joi');

function validateType (value) {
    if ( ["deal", "discount_percent", "discount_fixed", "free"].indexOf(value) ==-1 ) {
        throw new Error("Type must be one of deal, discount_percent, discount_fixed and free");
    } 
}

function validateSearchType (value) {
    if ( ["deal", "discount", "free", "all"].indexOf(value) ==-1 ) {
        throw new Error("Type must be one of deal, all, discount and free");
    } 
}

function validateFeature (value) {
    if ( ["new", "highlight", "popular", "commented"].indexOf(value) == -1 ) {
        throw new Error("Feature must be one of new, highlight, popular, commented!")
    }
}

module.exports = {
    add: Joi.object().keys({
        user_id: Joi.number().required(),
        title: Joi.string().required(),
        description: Joi.string().required(),
        price_new: Joi.string(),
        price_low: Joi.string(),
        price_ship: Joi.string(),
        type: Joi.string().required().external(validateType),
        store_id: Joi.number(),
        deal_url: Joi.string(),
        image_urls: Joi.string(),
        category_id: Joi.number(),
        vip: Joi.number(),
        start_date: Joi.date(),
        expires: Joi.string(),
        code: Joi.string()
    }),
    edit: Joi.object().keys({
        deal_id: Joi.number().required(),
        user_id: Joi.number().required(),
        title: Joi.string().required(),
        description: Joi.string().required(),
        price_new: Joi.string(),
        price_low: Joi.string(),
        type: Joi.string().required().external(validateType),
        store_id: Joi.number(),
        deal_url: Joi.string(),
        image_urls: Joi.string(),
        category_id: Joi.number(),
        expires: Joi.string(),
        code: Joi.string()
    }),
    find: Joi.object().keys({
        type: Joi.string().required().external(validateSearchType),
        store_id: Joi.number().required(),
        category_id: Joi.array().required(),
        feature: Joi.string().required().external(validateFeature),
        start_at: Joi.number().required(),
        length: Joi.number().required(),
        vip: Joi.number(),
        search: Joi.string()
    }),
    count: Joi.object().keys({
        type: Joi.string().required().external(validateSearchType),
        store_id: Joi.number().required(),
        category_id: Joi.array().required(),
        feature: Joi.string().required().external(validateFeature),
        vip: Joi.number()
    })
}