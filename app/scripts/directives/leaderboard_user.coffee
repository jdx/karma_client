define ['app'], (app) ->
  app.directive 'leaderboardUser', ($animate) ->
    (scope, element, attrs) ->
      scope.$watch 'user.karma', (user) ->
        $animate.addClass element, 'highlight', ->
          $animate.removeClass element, 'highlight'
