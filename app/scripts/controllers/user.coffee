'use strict'

angular.module('karmaClientApp')
  .controller 'UserCtrl', ['$scope', '$http', ($scope, $http) ->
    $http.get('http://127.0.0.1:5000/top').success (res) ->
      $scope.users = res
  ]