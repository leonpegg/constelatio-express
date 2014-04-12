(function() {
  'use strict';
  angular.module('constelatioApp').controller('ExploreCtrl', [
    '$scope', '$http', function($scope, $http) {
      return $http.get("/api/asterank?query={\"e\":{\"$lt\":0.1},\"i\":{\"$lt\":4},\"a\":{\"$lt\":1.5}}&limit=10").success(function(data) {
        return $scope.asteroids = data;
      });
    }
  ]);

}).call(this);
