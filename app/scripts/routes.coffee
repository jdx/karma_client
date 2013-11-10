define ['app'], (app) ->
  app.config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html',
        controller: 'UserCtrl'
