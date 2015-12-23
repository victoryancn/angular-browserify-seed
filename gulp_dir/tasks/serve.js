'use strict';

var gulp = require('gulp');
var serve = require('gulp-serve');
var staticServerPath = BUILD_FOLDER;
if (release)
  staticServerPath = RELEASE_FOLDER;
// module.exports = gulp.task('serve', function (next) {
//
//   gulp.task('serve', serve('public'));
//   staticServer.use(serveStatic(staticServerPath,{'index': ['index.html']})).listen(process.env.PORT || config.ports.staticServer, next);
// });
module.exports = gulp.task('serve', serve({
  root: staticServerPath,
  port: process.env.PORT || config.ports.staticServer
}));
