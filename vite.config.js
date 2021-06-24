import { defineConfig } from 'vite'
const { resolve } = require('path')

// https://vitejs.dev/config/
export default defineConfig({
  build: {
    rollupOptions: {
      input: {
        index: resolve(__dirname, 'index.html'),
        wayf: resolve(__dirname, 'wayf/index.html'),
        unauthorized: resolve(__dirname, 'unauthorized-user/index.html'),
        unknown: resolve(__dirname, 'unknown-user/index.html')
      }
    },
  }
})
