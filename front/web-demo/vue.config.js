module.exports = {
  devServer: {
    proxy: {
      '/api': {
        target: 'http://espmi.local:80',
        changeOrigin: true,
        ws: true
      }
    }
  }
}
