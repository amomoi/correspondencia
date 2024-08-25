
const { environment } = require('@rails/webpacker');

module.exports = environment;

module.exports = {
    node: {
      __dirname: true,
      __filename: true,
      global: true
    },
  };
