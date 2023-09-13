const express = require('express');
const router = express.Router();

const StoreController = require('../controllers/store.controller');
const ErrorHandler = require('../middleware/error.middleware');
const {AuthGuard, AdminGuard} = require("../middleware/auth.middleware") ;
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',       AdminGuard,      ErrorHandler(StoreController.create));
router.post('/edit',     AdminGuard,        ErrorHandler(StoreController.edit));
router.get('/get/:id',           ErrorHandler(StoreController.get));
router.get('/getbyname/:name',           ErrorHandler(StoreController.getByName));
router.get('/getall',           ErrorHandler(StoreController.getAll));
router.get('/activate/:id',  AdminGuard,         ErrorHandler(StoreController.activate));
router.get('/deactivate/:id',  AdminGuard,         ErrorHandler(StoreController.deactivate));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;