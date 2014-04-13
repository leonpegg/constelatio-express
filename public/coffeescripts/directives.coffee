'use strict'

angular.module('constelatioApp')
  .directive('asteroid', () ->
    replace: true
    restrict: 'E'
    templateUrl: 'partials/asteroid')
  .directive('repeatDone', () ->
    (scope, element, attrs) ->
      scope.$evalAsync attrs.repeatDone)
