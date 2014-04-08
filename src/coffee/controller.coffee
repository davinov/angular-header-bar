angular.module('mw.angular-header-bar')
.controller 'headerController', [
  '$scope'
  '$location'
  ($scope, $location) ->
    $scope.home = ->
      $location.path() == $scope.homePage or $location.path() == '/' or $location.path() == ''
]
