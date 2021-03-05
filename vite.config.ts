import { defineConfig } from 'vite'

import { createVuePlugin as Vue2Plugin } from 'vite-plugin-vue2'
import RubyPlugin from 'vite-plugin-ruby'
import WindiCSS from 'vite-plugin-windicss'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    Vue2Plugin(),
    WindiCSS({
      root: process.cwd(),
      scan: {
        fileExtensions: ['erb', 'html', 'vue', 'rb', 'jsx', 'tsx'],
        dirs: ['app/views', 'app/helpers', 'app/javascript'],
      },
    }),
  ],
})
