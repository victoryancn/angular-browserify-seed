'use strict';

var gulp = require('gulp');
var watch = require('gulp-watch');
var livereload = require('gulp-livereload');

module.exports = gulp.task('watch', function () {
  gulp.watch([config.paths.src.scripts], ['lint']);
  gulp.watch([config.paths.src.index], ['index']);
  gulp.watch([config.paths.src.templates, config.paths.src.templatesHTML], ['templates']);
  gulp.watch([config.paths.src.stylesGlob], ['styles']);
});
