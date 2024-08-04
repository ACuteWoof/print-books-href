/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/**/*.html"],
  theme: {
    extend: {},
    fontFamily: {
      serif: ["IBM Plex Serif", "ui-serif", "Georgia", "serif"],
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
