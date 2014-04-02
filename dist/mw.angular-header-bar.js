angular.module('mw.angular-header-bar', ['ng']);

angular.module('mw.angular-header-bar').controller('headerController', [
  '$scope', '$location', function($scope, $location) {
    return $scope.home = function() {
      return $location.path() === $scope.homePage || $location.path() === '/' || $location.path() === '';
    };
  }
]);

angular.module('mw.angular-header-bar').directive('headerBar', function() {
  return {
    restrict: 'EA',
    controller: 'headerController',
    templateUrl: 'jade/view.html',
    transclude: true,
    scope: {
      title1: '=',
      title2: '=',
      beta: '=',
      version: '=',
      back: '=',
      homePage: '=',
      logo: '='
    }
  };
});
