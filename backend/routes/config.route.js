const express = require('express');
const router = express.Router();

const ConfigController = require('../controllers/config.controller');
const ErrorHandler = require('../middleware/error.middleware');
const {AdminGuard} = require('../middleware/auth.middleware'); 

router.get('/get',                ErrorHandler(ConfigController.get));
router.post('/set',      AdminGuard,          ErrorHandler(ConfigController.set));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;