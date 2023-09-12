const express = require('express');
const router = express.Router();

const StoreController = require('../controllers/store.controller');
const ErrorHandler = require('../middleware/error.middleware');
const {AuthGuard} = require("../middleware/auth.middleware") ;
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',             ErrorHandler(StoreController.create));
router.post('/edit',             ErrorHandler(StoreController.edit));
router.get('/get/:id',           ErrorHandler(StoreController.get));
router.get('/getbyname/:name',           ErrorHandler(StoreController.getByName));
router.get('/getall',           ErrorHandler(StoreController.getAll));
router.get('/activate/:id',           ErrorHandler(StoreController.activate));
router.get('/deactivate/:id',           ErrorHandler(StoreController.deactivate));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;