var gulp = require('gulp'),
		gutil = require('gulp-util'),
		coffee = require('gulp-coffee');

var coffeSrcs = ['components/coffee/*.coffee'];

gulp.task('coffee', function() {
	gulp.src(coffeSrcs)
		.pipe(coffee({bare: true})
			.on('error', gutil.log)
		)
		.pipe(gulp.dest('components/scripts'))
});