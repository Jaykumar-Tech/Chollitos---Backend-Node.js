const express = require('express');
const router = express.Router();

const AuthController = require('../controllers/auth.controller');
const ErrorHandler = require('../middleware/error.middleware');
const AuthGuard = require('../middleware/auth.middleware'); // token check
const schema = require('../validations/auth.validation');
const validate = require('../utils/validator.util'); 

// Register
router.post('/exist',                                          ErrorHandler(AuthController.exist)); // exist email
router.post('/google',                                          ErrorHandler(AuthController.google)); // sign with google
router.post('/facebook',                                          ErrorHandler(AuthController.facebook)); // sign with google
router.get('/callback',                                          ErrorHandler(AuthController.authCallback)); // get callback
router.post('/register',                                        ErrorHandler(AuthController.register)); // register with email and password

// Login
router.post('/login',                                          ErrorHandler(AuthController.login)); // exist email

// Get All user's information
router.get('/getall',                                           ErrorHandler(AuthController.getAllUsers));

// router.post('/login',    validate(schema.login),                ErrorHandler(AuthController.login));
// router.get('/user',                                             ErrorHandler(AuthController.getUser));
// router.get('/logout',    AuthGuard,                                       ErrorHandler(AuthController.logout));
// router.get('/getall',                                           ErrorHandler(AuthController.getAllUsers));
// router.get('/delete/:userId',                                   ErrorHandler(AuthController.deleteUser));
// router.get('/deleteall',                                        ErrorHandler(AuthController.deleteAll));
// router.post('/verifycode',   validate(schema.verify),               ErrorHandler(AuthController.verifyCode));
// router.post('/getcode',   validate(schema.resend),               ErrorHandler(AuthController.resendCode));
// router.post('/edit',   validate(schema.edit),  AuthGuard,                  ErrorHandler(AuthController.edit));
// router.post('/addreview',   validate(schema.addreview),         ErrorHandler(AuthController.addReview));
// router.post('/incbalance',   validate(schema.incbalance),       ErrorHandler(AuthController.incBalance));
// router.post('/decbalance',   validate(schema.decbalance),       ErrorHandler(AuthController.decBalance));
// router.post('/forgot',   validate(schema.resend),       ErrorHandler(AuthController.resendCode));
// router.post('/resetpassword',   validate(schema.resetpassword),       ErrorHandler(AuthController.resetPassword));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;