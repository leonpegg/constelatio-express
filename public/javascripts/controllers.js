(function() {
  'use strict';
  angular.module('constelatioApp').controller('ExploreCtrl', [
    '$scope', '$http', function($scope, $http) {
      return $http.get("/asterank/api/rankings?sort_by=score&limit=4000").success(function(data) {
        return $scope.asteroids = data;
      });
    }
  ]);

}).call(this);
