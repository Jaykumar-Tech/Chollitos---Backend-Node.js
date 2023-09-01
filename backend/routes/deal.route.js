const express = require('express');
const router = express.Router();

const DealController = require('../controllers/deal.controller');
const ErrorHandler = require('../middleware/error.middleware');
const Exist = require("../middleware/existance.middleware")
const schema = require('../validations/deal.validation');
const validate = require('../utils/validator.util');
const {dealFilter, dealCreate} = require("../middleware/deal.middleware");
const AuthGuard = require('../middleware/auth.middleware'); 

router.post('/add', AuthGuard, dealCreate, validate(schema.add), ErrorHandler(DealController.create));
router.post('/edit', AuthGuard, validate(schema.edit), ErrorHandler(DealController.edit));
router.post('/find', dealFilter, validate(schema.find), ErrorHandler(DealController.find));
router.post('/count', dealFilter, validate(schema.count), ErrorHandler(DealController.count));
router.get('/get/:id', validate(schema.get), ErrorHandler(DealController.get));
router.get('/usecode/:id', ErrorHandler(DealController.useCode));

router.all('*', (req, res) => res.status(400).json({ message: 'Bad Request.' }))

module.exports = router;