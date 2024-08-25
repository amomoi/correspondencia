const { environment } = require('@rails/webpacker')

module.exports = {
    // ...outras configurações
    node: {
      __dirname: true,
      __filename: true,
      global: true,
    },
  };
