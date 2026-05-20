/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        cream: {
          50: '#FFF8EF',
          100: '#FDF0E1',
          200: '#F6D9B8',
          300: '#E8C49A',
          400: '#D9A66A',
          500: '#C98B4B',
        },
        coffee: {
          400: '#8B5E3C',
          500: '#6B4423',
        },
        pink: {
          100: '#F9D5D3',
          200: '#F5B4B0',
        }
      },
      fontFamily: {
        sans: ['PingFang SC', 'Microsoft YaHei', 'sans-serif'],
      },
      boxShadow: {
        'soft': '0 4px 20px rgba(217, 166, 106, 0.15)',
        'hover': '0 8px 30px rgba(217, 166, 106, 0.25)',
      }
    },
  },
  plugins: [],
}