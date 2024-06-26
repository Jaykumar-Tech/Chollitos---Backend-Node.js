const express = require('express');
const router = express.Router();

const LikeController = require('../controllers/like.controller');
const ErrorHandler = require('../middleware/error.middleware');
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 
const {AuthGuard} = require('../middleware/auth.middleware'); 

router.post('/add',    AuthGuard,         ErrorHandler(LikeController.create));
router.post('/find',   AuthGuard,          ErrorHandler(LikeController.find));
router.post('/get',           ErrorHandler(LikeController.get));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;