'use strict'

angular.module('constelatioApp')
  .controller 'ExploreCtrl', ['$scope', '$http', ($scope, $http) ->
    $http.get("/asterank/api/rankings?sort_by=score&limit=30").success (data) ->
      $scope.asteroids = data
  ]
