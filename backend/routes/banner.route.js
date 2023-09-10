const express = require('express');
const router = express.Router();

const BannerController = require('../controllers/banner.controller');
const ErrorHandler = require('../middleware/error.middleware');
const { AdminGuard } = require('../middleware/auth.middleware'); 
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/save',   AdminGuard,          ErrorHandler(BannerController.save));
router.get('/load',             ErrorHandler(BannerController.load));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;