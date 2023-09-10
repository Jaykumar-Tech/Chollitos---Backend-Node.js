const express = require('express');
const router = express.Router();

const ActivityController = require('../controllers/activity.controller');
const ErrorHandler = require('../middleware/error.middleware');
const {AuthGuard} = require('../middleware/auth.middleware'); 
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',             ErrorHandler(ActivityController.create));
router.get('/get',   AuthGuard,        ErrorHandler(ActivityController.get));
router.get('/getpoint',    AuthGuard,       ErrorHandler(ActivityController.getPoint));
router.post('/addname',           ErrorHandler(ActivityController.addName));
router.get('/delete/:id',           ErrorHandler(ActivityController.deleteName));
router.get('/getallname',           ErrorHandler(ActivityController.getAllName));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;