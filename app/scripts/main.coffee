require.config
  paths:
    angular: '../bower_components/angular/angular'
    jquery: '../bower_components/jquery/jquery'
    underscore: '../bower_components/underscore/underscore'
    angular_route: '../bower_components/angular-route/angular-route'
    select2: '../bower_components/select2/select2'
    angular_ui_select2: '../bower_components/angular-ui-select2/src/select2'
  shim:
    angular: { exports: 'angular' }
    angular_ui_select2: { deps: ['angular'] }
    angular_route: { deps: ['angular'] }
    select2: { deps: ['jquery'] }
  deps: ['underscore', 'jquery', 'select2', 'angular_ui_select2', 'angular_route']
  priority: 'angular'

require [
  'angular',
  'app',
  'controllers/index',
  'services/index',
  'directives/index',
  'routes',
  ], (angular) ->
    angular.element(document).ready ->
      angular.bootstrap(document, ['app'])
