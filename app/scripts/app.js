'use strict';

window.local = true;

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
