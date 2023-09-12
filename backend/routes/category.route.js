const express = require('express');
const router = express.Router();

const CategoryController = require('../controllers/category.controller');
const ErrorHandler = require('../middleware/error.middleware');
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',             ErrorHandler(CategoryController.create));
router.post('/edit',             ErrorHandler(CategoryController.edit));
router.get('/children/:id',             ErrorHandler(CategoryController.getChildren));
router.get('/getall',           ErrorHandler(CategoryController.getAll));
router.get('/getbyslug/:slug_id',           ErrorHandler(CategoryController.getBySlug));
router.get('/getbyid/:id',           ErrorHandler(CategoryController.getById));
router.get('/activate/:id',           ErrorHandler(CategoryController.activate));
router.get('/deactivate/:id',           ErrorHandler(CategoryController.deactivate));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;