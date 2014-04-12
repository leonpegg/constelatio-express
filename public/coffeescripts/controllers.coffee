'use strict'

angular.module('constelatioApp')
  .controller 'ExploreCtrl', ['$scope', '$http', ($scope, $http) ->
    $scope.asteroids = [
      name: 'Apophis'
      number: 99942
      discoveryDate: '2004-06-19'
      discoveryObservatory: 'Kitt Peak'
      discoveryAuthors: [
        'R. A. Tucker'
        'D. J. Tholen'
        'F. Bernardi'
      ],
      imagePath: 'img/img-apophis.jpg'
      imageDesc: 'Image of Apophis'
      description: 'Apophis was named after blablabla...'
      orbitType: 'Aten'
      classification: 'Potentially Hazardous Asteroid'
      semimajorAxis: 0.9221621
      eccentricity: 0.1911112
      inclination: 3.33029
      perihelionArg: 126.43762
      ascendingNode: 204.21430
      meanAnomaly: 98.09800 
    ]
  ]
