/**
 * Created by victor on 5/15/15.
 */
'use strict';
var gulp = require('gulp');
var gulpCopy = require('gulp-copy');
var gulpif = require('gulp-if');
module.exports = gulp.task('copy', function () {
  return gulp.src(config.paths.src.copyFiles)
    .pipe(gulpif(release, gulpCopy(config.paths.dest.release.styles), gulpCopy(config.paths.dest.build.styles)));
});
