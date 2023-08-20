const express = require('express');
const router = express.Router();

const DealController = require('../controllers/deal.controller');
const ErrorHandler = require('../middleware/error.middleware');
const Exist = require("../middleware/existance.middleware")
const schema = require('../validations/deal.validation');
const validate = require('../utils/validator.util'); 

router.post('/add',       validate(schema.add),      ErrorHandler(DealController.create));
router.post('/edit',      validate(schema.edit),       ErrorHandler(DealController.edit));
router.post('/find',      validate(schema.find),       ErrorHandler(DealController.find));
router.post('/count',      validate(schema.count),     ErrorHandler(DealController.count));
router.get('/get/:id',     validate(schema.get),      ErrorHandler(DealController.get));

router.all('*',  (req, res) => res.status(400).json({ message: 'Bad Request.'}))

module.exports = router;