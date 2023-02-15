const express = require('express');
const controllers = require('./controllers');

const router = express.Router();

router.get('/hello', controllers.sayHello);

module.exports = router;
