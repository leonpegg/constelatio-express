(function() {
  'use strict';
  angular.module('constelatioApp').directive('asteroid', function() {
    return {
      replace: true,
      restrict: 'E',
      templateUrl: 'partials/asteroid'
    };
  });

}).call(this);
