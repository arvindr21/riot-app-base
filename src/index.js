require('./styles/main.scss');
import * as $ from "jquery";
import 'bootstrap';

var riot = require('riot')

document.addEventListener('DOMContentLoaded', () => riot.mount('*'))

require('./elements/includes.js');
require('./components/includes.js');