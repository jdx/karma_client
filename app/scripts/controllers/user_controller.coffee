define ["app"], (app) ->
  app.controller 'UserCtrl', ($scope, $leaderboardService) ->
    leaderboardService.get().success (res) ->
      $scope.leaderboard = res
      $scope.users = _.pluck(res, 'name')

    $scope.upvoteUser = ->
      user = _.find scope.leaderboard, (user) -> user["name"] == scope.user
      user["karma"]++
