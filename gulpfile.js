'use strict';

const gulp = require('gulp');
const sass = require('gulp-sass');
const { series } = require('gulp');

function styles(cb) {
    gulp.src('./app/static/styles/src/*.scss')
        .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
        .pipe(gulp.dest('./app/static/styles/dist/'))
    cb();
}

exports.build = series(styles);



