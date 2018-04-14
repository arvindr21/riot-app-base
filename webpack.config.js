module.exports = {
  entry: './src/index.js',
  output: {
    path: __dirname + '/dist',
    filename: 'bundle.js'
  },
  module:{
    rules:[
      {
        test: /\.js$/,
        loader:'babel-loader',
        exclude: /node_modules/,
        query: {
          presets: ['es2015']
        }
      },
      {
        test: /\.tag$/,
        loader: 'tag-loader',
        exclude: /node_modules/
      }
    ]
  }
}
