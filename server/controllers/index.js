const models = require('../models');

module.exports = {
  sayHello: (req, res) => {
    const something = models.sayHello();
    res.send(something);
  },
};
