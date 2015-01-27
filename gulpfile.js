//FIRST INSTALL NODE.JS
//INSTALL GULP
// sudo npm install --global gulp
// sudo npm install --save-dev gulp

//INSTALL SASS PROCESSOR
// sudo npm install --save-dev gulp-sass

//INSTALL JSHINT FOR JAVASCRIPT VALIDATION
// sudo npm install --save-dev gulp-jshint

//INSTALL LiveReload plugin
//***requires chrome live reload extension to be installed as well (https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei)
//sudo npm install --save-dev gulp-livereload



var gulp = require('gulp');
var sass = require('gulp-sass')
var jshint = require('gulp-jshint');
var livereload = require('gulp-livereload')

var paths = {
  sass: ['./themes/FoxyStripe/css/scss/*.scss'],
  lint: ['./themes/FoxyStripe/javascript/*.js'],
};


gulp.task('sass', function () {
    gulp.src(paths.sass)
        .pipe(sass())
        .pipe(gulp.dest('./themes/FoxyStripe/css'));
});

gulp.task('lint', function() {
  return gulp.src(paths.lint)
    .pipe(jshint())
    .pipe(jshint.reporter('default'));
});

gulp.task('watch', function() {
  gulp.watch(paths.sass, ['sass']);
  gulp.watch(paths.lint, ['lint']);
  livereload.listen();
  gulp.watch('./themes/FoxyStripe/css/*.css').on('change', livereload.changed);
  gulp.watch('./themes/FoxyStripe/**/*.ss').on('change', livereload.changed);
  gulp.watch(paths.lint).on('change', livereload.changed);
});

gulp.task('default', ['watch', 'sass', 'lint']);