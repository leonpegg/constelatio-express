'use strict'

angular.module('constelatioApp')
  .controller 'ExploreCtrl', ['$scope', '$http', '$location', '$anchorScroll', ($scope, $http, $location, $anchorScroll) ->
    $http.get("/asterank/api/rankings?sort_by=score&limit=30").success (data) ->
      $scope.asteroids = data
    $scope.selectAsteroid = (asteroid) ->
      $scope.asteroid =
        originalObject: asteroid
        title: "#{asteroid.prov_des} #{asteroid.full_name}"
      $location.hash 'asteroid'
      $anchorScroll()
    $scope.fancybox = () ->
      $('.iframe').fancybox {width:"100%", height: "100%"}
  ]
