module.exports = (config) ->
  config.set
    basePath: '../'
    preprocessors:
      'src/**/*.coffee': 'coverage'
      'test/**/*.coffee': 'coffee'
      '**/*.jade': 'ng-jade2js'
    files: [
      'bower_components/jquery/dist/jquery.js'
      'bower_components/angular/angular.js'
      'bower_components/angular-mocks/angular-mocks.js'
      'bower_components/bootstrap/dist/**/bootstrap.js'
      'src/coffee/**/*.coffee'
      'src/jade/**/*.jade'
      'test/unit/**/*.coffee'
    ]
    autoWatch: true
    frameworks: ['jasmine']
    browsers: ['Firefox']
    plugins: [
      'karma-firefox-launcher'
      'karma-jasmine'
      'karma-coffee-preprocessor'
      'karma-ng-jade2js-preprocessor'
      'karma-coverage'
    ]
    ngJade2JsPreprocessor:
      stripPrefix: 'src/'
      moduleName: 'mw.angular-header-bar'
    reporters: [
      'progress'
      'coverage'
    ]
    coverageReporter:
      type: 'lcovonly'
      dir: 'test/coverage'
