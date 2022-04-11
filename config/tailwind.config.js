const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
	purge: [
    "app/views/**/*.html.erb"
  ],
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
			animation: {
        'pulse-once': 'pulse 1s ease-in-out'
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
