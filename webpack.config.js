var path = require("path")

module.exports = {
  entry: "./src/index.js",
  output: {
    path: __dirname,
    filename: "bundle.js"
  },
  module:{
    loaders:[
      {
        test: /\.js$|\.tag$/,
        loader: "babel-loader",
        exclude: /node_modules/,
        query: {
          presets: ["es2015"],
        }
      },
      {
        test: /\.tag$/,
        loader: "tag-loader",
        exclude: /node_modules/,
        query:{
          hot: true,
        }
      }
    ]
  }
}
