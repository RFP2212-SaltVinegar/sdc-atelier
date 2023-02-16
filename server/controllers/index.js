const models = require('../models');

module.exports = {
  sayHello: (req, res) => {
    const something = models.sayHello();
    res.sendStatus(200);
    res.send(something);
  },
};
