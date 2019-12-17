const path = require('path');

module.exports = {
  mode: 'development',
  watch: true,
  entry: './app/static/scripts/src/index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname + '/app/static/scripts', 'dist'),
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /(node_modules|bower_components)/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env']
          }
        }
      }
    ]
  }
};