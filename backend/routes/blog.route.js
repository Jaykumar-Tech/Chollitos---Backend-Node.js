const express = require('express');
const router = express.Router();

const BlogController = require('../controllers/blog.controller');
const ErrorHandler = require('../middleware/error.middleware');
const AuthGuard = require('../middleware/auth.middleware'); 
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',     AuthGuard,        ErrorHandler(BlogController.create));
router.post('/edit',     AuthGuard,        ErrorHandler(BlogController.edit));
router.get('/get/:id',           ErrorHandler(BlogController.get));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;