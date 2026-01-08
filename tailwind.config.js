/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/**/*.html"],
  theme: {
    extend: {
      backgroundImage: {
        main: 'url("https://lewoof.xyz/api/background")',
      },
    },
    fontFamily: {
      serif: ["IBM Plex Serif", "ui-serif", "Georgia", "serif"],
      mono: ["IBM Plex Mono", "ui-monospace", "SFMono-Regular"],
      display: ["Modern Antiqua", "serif"],
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
