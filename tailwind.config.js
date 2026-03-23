/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/**/*.html"],
  theme: {
    extend: {
      backgroundImage: {
        main: 'url("https://lewoof.xyz/assets/images/background.jpg")',
      },
    },
    fontFamily: {
      serif: ["EB Garamond", "ui-serif", "Georgia", "serif"],
      mono: ["IBM Plex Mono", "ui-monospace", "SFMono-Regular"],
      display: ["Modern Antiqua", "serif"],
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
