'use strict';

var gulp = require('gulp');
var browserify = require('browserify');
var source = require('vinyl-source-stream');
var browserifyShim = require('browserify-shim');
var coffeeify = require('coffeeify');
var gulpif = require('gulp-if');
var watchify = require('watchify');
var _ = require('underscore');
module.exports = gulp.task('browserify', function () {
  return browserify({
    cache: {},
    packageCache: {},
    entries: [config.paths.src.modules],
    extensions: ['.coffee']
  })
    .transform(coffeeify)
    .transform(browserifyShim)
    .bundle()
    .pipe(source(config.filenames.build.scripts))
    .pipe(gulp.dest(config.paths.dest.build.scripts));
});
