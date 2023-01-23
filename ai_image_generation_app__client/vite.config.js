import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  base: "/OpenAI_generation_image_app/",
  plugins: [react()],
});
