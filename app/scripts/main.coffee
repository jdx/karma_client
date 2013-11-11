require.config
  paths:
    angular: '../bower_components/angular/angular'
    angular_animate: '../bower_components/angular-animate/angular-animate'
    angular_route: '../bower_components/angular-route/angular-route'
    angular_ui_select2: '../bower_components/angular-ui-select2/src/select2'
    jquery: '../bower_components/jquery/jquery'
    select2: '../bower_components/select2/select2'
    underscore: '../bower_components/underscore/underscore'
  shim:
    angular: { exports: 'angular' }
    angular_ui_select2: { deps: ['angular'] }
    angular_route: { deps: ['angular'] }
    angular_animate: { deps: ['angular'] }
    select2: { deps: ['jquery'] }
  deps: ['underscore', 'jquery', 'select2', 'angular_ui_select2', 'angular_route', 'angular_animate']
  priority: 'angular'

require [
  'angular',
  'app',
  'controllers/index',
  'services/index',
  'directives/index',
  'animations/index',
  'routes',
  ], (angular) ->
    angular.element(document).ready ->
      angular.bootstrap(document, ['app'])
