'use strict'

angular.module('karmaClientApp')
  .controller 'UserCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
    host = if $routeParams['local'] then 'http://127.0.0.1:5000' else 'http://c5-karma.herokuapp.com'
    $http.get("#{host}/top").success (res) ->
      $scope.users = res
  ]