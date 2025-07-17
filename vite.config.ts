import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'
import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import reloadOnChange from 'vite-plugin-full-reload'
import path from 'path'

export default defineConfig({
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./app/frontend/")
    }
  },
  plugins: [
    react(),
    tailwindcss(),
    RubyPlugin(),
    reloadOnChange(['app/serializers/**/*.rb'], { delay: 200 }),
  ]
})
