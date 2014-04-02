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
      logo: '=',
      fluid: '='
    }
  };
});

angular.module("mw.angular-header-bar").run(["$templateCache", function($templateCache) {$templateCache.put("jade/view.html","<nav role=\"navigation\" ng-controller=\"headerController\"><div class=\"container{{ fluid ? &quot;-fluid&quot; : &quot;&quot; }}\"><div class=\"navbar-header\"><button id=\"app-menu-toggle\" type=\"button\" data-toggle=\"collapse\" data-target=\"#app-menu-collapsable\" class=\"navbar-toggle\"><span class=\"sr-only\">Toggle navigation</span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span><span class=\"icon-bar\"></span></button><div class=\"navbar-brand\"><button onclick=\"window.history.back()\" ng-hide=\"home()\" ng-if=\"back\" class=\"back\"><i><span class=\"sr-only\">Back</span></i></button><a href=\"#\" class=\"title\"><h1><strong>{{ title1 }}<sup ng-if=\"beta\"> BETA {{ version || \'\' }}</sup><br>{{ title2 }}</strong></h1></a></div><img ng-src=\"{{ logo }}\" ng-if=\"logo\" class=\"logo\"></div><!-- Collect the nav links, forms, and other content for toggling--><div id=\"app-menu-collapsable\" class=\"collapse navbar-collapse\"><ul ng-transclude class=\"nav navbar-nav navbar-right\"></ul></div></div></nav>");}]);