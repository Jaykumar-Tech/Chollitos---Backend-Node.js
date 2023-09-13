const express = require('express');
const router = express.Router();

const AuthController = require('../controllers/auth.controller');
const ErrorHandler = require('../middleware/error.middleware');
const { AuthGuard, AdminGuard } = require('../middleware/auth.middleware'); // token check
const schema = require('../validations/auth.validation');
const validate = require('../utils/validator.util');

// Register
router.post('/resend_code', ErrorHandler(AuthController.resendCode)); // get callback
router.post('/verify_code', ErrorHandler(AuthController.verifyCode)); // register with email and password
router.post('/reset_password', ErrorHandler(AuthController.resetPassword));
router.post('/change_password', ErrorHandler(AuthController.changePassword));
router.post('/update_role', AdminGuard, validate(schema.updateRole), ErrorHandler(AuthController.updateRole));
router.get('/delete/:id', AdminGuard, ErrorHandler(AuthController.delete));
router.get('/deactivate/:id', AdminGuard, ErrorHandler(AuthController.deactivate));
router.get('/activate/:id', AdminGuard, ErrorHandler(AuthController.activate));

// Login
router.post('/login', ErrorHandler(AuthController.login)); // exist email
router.post('/register', ErrorHandler(AuthController.register)); // register with email and password

// Get All user's information
router.get('/getall', AdminGuard, ErrorHandler(AuthController.getAllUsers));

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

router.all('*', (req, res) => res.status(400).json({ message: 'Bad Request.' }))

module.exports = router;