const express = require('express');
const router = express.Router();

const CommentController = require('../controllers/comment.controller');
const ErrorHandler = require('../middleware/error.middleware');
const {AuthGuard} = require('../middleware/auth.middleware'); 
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',   AuthGuard,          ErrorHandler(CommentController.create));
router.post('/find',           ErrorHandler(CommentController.find));
router.get('/get/:id',           ErrorHandler(CommentController.get));
router.get('/delete/:id',           ErrorHandler(CommentController.delete));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;