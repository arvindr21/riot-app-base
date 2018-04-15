require('./styles/main.scss');

var riot = require('riot')

document.addEventListener('DOMContentLoaded', () => riot.mount('*'))

require('./components/app-root.tag');
