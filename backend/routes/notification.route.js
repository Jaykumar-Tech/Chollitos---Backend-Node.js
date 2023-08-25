const express = require('express');
const router = express.Router();

const NotificationController = require('../controllers/notification.controller');
const ErrorHandler = require('../middleware/error.middleware');
const AuthGuard = require('../middleware/auth.middleware'); 
// const schema = require('../validations/follow.validation');
// const validate = require('../utils/validator.util'); 

router.post('/add',             ErrorHandler(NotificationController.create));
router.get('/setRead/:id',             ErrorHandler(NotificationController.setRead));
router.get('/get',     AuthGuard,      ErrorHandler(NotificationController.getUnread));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;