angular.module 'mw.angular-header-bar'
.directive 'headerBar', ->
  restrict: 'EA'
  controller: 'headerController'
  templateUrl: 'jade/view.html'
  transclude: true
  scope:
    title1: '='
    title2: '='
    beta: '='
    version: '='
    back: '='
    homePage: '='
    logo: '='
    fluid: '='
