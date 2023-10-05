import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://levelup.gitconnected.com/packaging-front-end-react-applications-under-a-production-environment-with-vite-and-nginx-in-docker-7e2739bc0494

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
})
