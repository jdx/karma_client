define ["app"], (app) ->
  app.controller 'UserCtrl', ($scope, $leaderboardService, $upvoteService) ->
    $scope.reloadUsers = ->
      $leaderboardService.get().success (res) ->
        $scope.leaderboard = res
        $scope.users = _.pluck(res, 'name')
    $scope.reloadUsers()

    $scope.upvoteUser = ->
      $upvoteService.upvote $scope.user, $scope.comments
      user = _.find $scope.leaderboard, (user) -> user["name"] == $scope.user
      user["karma"]++
      $scope.comments = null
      # HACK since select2 appears to have a bug
      $scope.user = null
      $scope.users = []
      $scope.reloadUsers()

    $scope.select2Options =
      width: "400"
