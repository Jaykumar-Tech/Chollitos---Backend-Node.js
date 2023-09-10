const express = require('express');
const router = express.Router();
const multer = require("multer")

const DealController = require('../controllers/deal.controller');
const ErrorHandler = require('../middleware/error.middleware');
const Exist = require("../middleware/existance.middleware")
const schema = require('../validations/deal.validation');
const validate = require('../utils/validator.util');
const {dealFilter, dealCreate} = require("../middleware/deal.middleware");
const {AuthGuard} = require('../middleware/auth.middleware'); 

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, __dirname + "/../resource/"); // Specify the destination folder
    },
    filename: function (req, file, cb) {
        cb(null, file.originalname); // Specify the filename
    }
});
const upload = multer({
    storage: storage
});

router.post('/upload', AuthGuard, upload.single('file'),  ErrorHandler(DealController.upload));
router.post('/add', AuthGuard, dealCreate, validate(schema.add), ErrorHandler(DealController.create));
router.post('/edit', AuthGuard, validate(schema.edit), ErrorHandler(DealController.edit));
router.post('/find', dealFilter, AuthGuard, validate(schema.find), ErrorHandler(DealController.find));
router.post('/count', dealFilter, validate(schema.count), ErrorHandler(DealController.count));
router.get('/get/:id',  AuthGuard,  ErrorHandler(DealController.get));
router.get('/usecode/:id', ErrorHandler(DealController.useCode));
router.get('/delete/:id',        AuthGuard,         ErrorHandler(DealController.remove)); // register with email and password

router.all('*', (req, res) => res.status(400).json({ message: 'Bad Request.' }))

module.exports = router;