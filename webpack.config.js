// UGH I Fucking HATE this.
var path = require("path");
var webpack = require("webpack");
var publicPath = "http://localhost:4000/";

module.exports = {
  entry: "./web/static/js/app.js",
  output: { path: "./priv/static/js", filename: "app.js" },
  module: {
    loaders: [

      { test: /\.css/, loader: [
        'style?sourceMap',
        "css?modules&importLoaders1&localIdentName=[path]___[name]__[local]___[hash:base64:5]"
      ] },
      { test: /\.js$/, loader: "babel-loader", exclude: /(node_modules)/ },
      { test: /\.json$/, loader: "json-loader" },
      {
        test: /\.(graphql|gql)$/,
        exclude: /node_modules/,
        loader: "graphql-tag/loader"
      }
    ]
  },
  resolve: {
    extensions: [ ".js", ".jsx" ],
    alias: {
      phoenix: path.join(__dirname, "/deps/phoenix/priv/static/phoenix.js"),
      //'mapbox-gl': path.resolve('./node_modules/mapbox-gl/dist/mapbox-gl.js'),
      webworkify: "webworkify-webpack"
    }
  }
};
