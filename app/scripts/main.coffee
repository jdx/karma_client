require.config
  paths:
    angular: '../bower_components/angular/angular'
    jquery: '../bower_components/jquery/jquery'
    underscore: '../bower_components/underscore/underscore'
    angular_route: '../bower_components/angular-route/angular-route'
  shim:
    angular: { exports: 'angular' }
  deps: ['underscore']
  priority: 'angular'

require [
  'angular',
  'app',
  'controllers/index',
  'services/index',
  'routes',
  ], (angular) ->
    angular.element(document).ready ->
      angular.bootstrap(document, ['app'])
