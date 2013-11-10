define ['app', 'angular_route'], (app) ->
  app.config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/leaderboard.html',
        controller: 'UserCtrl'
