'use strict';

var fs = require('fs'),
  argv = require('yargs').argv,
  tasks = fs.readdirSync('./gulp_dir/tasks/');

require('./config');

global.release = argv.release;
tasks.forEach(function (task) {
  require('./tasks/' + task);
});
