const express = require('express');
const router = express.Router();
const LangController = require('../controllers/lang.controller');
const ErrorHandler = require('../middleware/error.middleware');
const {AuthGuard} = require('../middleware/auth.middleware'); 

router.get('/get', ErrorHandler(LangController.get));
router.post('/change', ErrorHandler(LangController.change));

router.all('*', (req, res) => res.status(400).json({ message: 'Bad Request.' }))

module.exports = router;