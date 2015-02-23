'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();

var htmlMinifierOptions = {
  removeComments: true,
  collapseWhitespace: true,
  collapseBooleanAttributes: true,
  removeScriptTypeAttributes: true,
  removeStyleLinkTypeAttributes: true,
  removeEmptyAttributes: true,
  minifyJS: true,
  minifyCSS: true
};

gulp.task('usemin', function(){
  return gulp.src('public/**/*.html')
    .pipe($.usemin({
      css: [$.minifyCss(), 'concat', $.rev()],
      html: [$.htmlMinifier(htmlMinifierOptions)],
      js: [$.uglify(), $.rev()]
    }))
    .pipe(gulp.dest('public'));
});

gulp.task('default', ['usemin']);