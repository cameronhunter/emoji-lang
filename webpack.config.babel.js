import webpack from 'webpack';
import cssnext from 'cssnext';
import Path from 'path';

const path = (...args) => Path.join(__dirname, ...args);

export default {
  entry: {
    app: path('src', 'index.js'),
    vendor: [
      'codemirror/mode/javascript/javascript',
      'react',
      'react-code-mirror',
      'react-dom'
    ]
  },
  output: {
    path: path('assets'),
    filename: '[name].js',
    publicPath: '/assets'
  },
  module: {
    loaders: [
      { test: /\.jsx?$/, exclude: /node_modules/, loader: 'babel-loader', query: { cacheDirectory: true } },
      { test: /\.css$/, loader: ['style', 'css?module', 'postcss'].join('!') }
    ]
  },
  plugins: [
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.OccurenceOrderPlugin(),
    new webpack.NoErrorsPlugin(),
    new webpack.DefinePlugin({
      'process.env.NODE_ENV': `'${process.env.NODE_ENV}'`
    }),
    new webpack.optimize.CommonsChunkPlugin('vendor', 'vendor.js')
  ],
  resolve: {
    extensions: ['', '.json', '.js', '.jsx', '.css']
  },
  postcss: [
    cssnext({ browsers: 'last 2 versions' })
  ],
};
