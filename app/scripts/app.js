'use strict';

angular.module('karmaClientApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'UserCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
