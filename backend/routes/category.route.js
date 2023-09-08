const express = require('express');
const router = express.Router();

const CategoryController = require('../controllers/category.controller');
const ErrorHandler = require('../middleware/error.middleware');
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',             ErrorHandler(CategoryController.create));
router.get('/children/:id',             ErrorHandler(CategoryController.getChildren));
router.get('/getall',           ErrorHandler(CategoryController.getAll));
router.get('/get/:slug_id',           ErrorHandler(CategoryController.getBySlug));
router.get('/delete/:id',           ErrorHandler(CategoryController.remove));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;