define ["app"], (app) ->
  ctrl = ($scope, $leaderboardService, $upvoteService) ->
    $leaderboardService.get().success (res) ->
      $scope.leaderboard = res
      $scope.users = _.pluck(res, 'name')

    $scope.upvote = {}
    $scope.upvoteUser = ->
      if $scope.upvote.user
        $upvoteService.upvote $scope.upvote.user, $scope.upvote.comments
        user = _.find $scope.leaderboard, (user) -> user["name"] == $scope.upvote.user
        user["karma"]++
        $scope.comments = null
        # HACK since select2 appears to have a bug
        $scope.upvote = {}
        $scope.formState = 'button'

    $scope.select2Options =
      width: "400"

    $scope.formState = 'button'
    $scope.showForm = ->
      $scope.formState = 'form'
  app.controller 'UserCtrl', ['$scope', '$leaderboardService', '$upvoteService', ctrl]
