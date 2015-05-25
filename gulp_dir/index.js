'use strict';

var fs = require('fs'),
  argv = require('yargs').argv,
  tasks = fs.readdirSync('./gulp_dir/tasks/');

require('./config');

// --release flag when executing a task
global.release = argv.release;

tasks.forEach(function (task) {
  require('./tasks/' + task);
});
