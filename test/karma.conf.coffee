module.exports = (config) ->
  config.set
    basePath: '../'
    preprocessors:
      '**/*.coffee': ['coffee']
      '**/*.jade': ['ng-jade2js']
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
    browsers: ['Chrome']
    plugins: [
      'karma-chrome-launcher'
      'karma-jasmine'
      'karma-coffee-preprocessor'
      'karma-ng-jade2js-preprocessor'
    ]
    junitReporter:
      outputFile: 'test_out/unit.xml'
      suite: 'unit'

    ngJade2JsPreprocessor:
      stripPrefix: 'src/'
      moduleName: 'mw.angular-header-bar'
