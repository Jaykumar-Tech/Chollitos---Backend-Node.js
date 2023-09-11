const Joi = require('joi');
const passwordRegex = new RegExp(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/);

const validatePassword = (value) => {
    if (!passwordRegex.test(String(value))) {
        throw new Error('Password should contains a lowercase, a uppercase character and a digit.')
    }
}

const validateRole = (value) => {
    if (value !== "customer" && value != "vip" && value != "admin") {
        throw new Error('Your role must be [customer, vip, admin]')
    }
}

const validateStar = (value) => {
    if ([1, 2, 3, 4, 5].indexOf(value) === -1) {
        throw new Error('Review Star Number should be one of 1,2,3,4,5')
    }
}

const validateBalance = (value) => {
    if (!Number.isInteger(value)) {
        throw new Error('Balance must be integer')
    }
}

const validateCode = (value) => {
    if (typeof value !== "string") {
        throw new Error('Code must be string')
    }
    if (value.length !== 4) {
        throw new Error('Code length must be 4')
    }
    let num = parseInt(value);

    if (isNaN(num)) {
        throw new Error('Code must be string of number')
    } 
}

function validateLoginType (value) {
    if ( value === "normal" || value === "google" || value === "facebook" ) ;
    else throw new Error('Type must be normal or google or facebook')
}

module.exports = {
    register: Joi.object().keys({
        username: Joi.string().required(),
        email: Joi.string().email().required(),
        password: Joi.string().required().min(8).max(16).external(validatePassword),
        type: Joi.string().required().external(validateLoginType),
        avatar: Joi.string()
    }),
    login: Joi.object().keys({
        email: Joi.string().email().required(),
        password: Joi.string().required()
    }),
    updateRole: Joi.object().keys({
        user_id: Joi.number().required(),
        role: Joi.string().required().external(validateRole)
    })
}