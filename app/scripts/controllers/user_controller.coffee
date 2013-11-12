define ["app"], (app) ->
  ctrl = ($scope, $leaderboardService, $upvoteService) ->
    $leaderboardService.get().success (res) ->
      $scope.leaderboard = res
      $scope.users = _.pluck(res, 'name')

    $upvoteService.getUpvotes().success (res) ->
      $scope.upvotes = res

    $scope.upvote = {}
    $scope.upvoteUser = ->
      $upvoteService.upvote $scope.upvote.user, $scope.upvote.comment
      user = _.find $scope.leaderboard, (user) -> user["name"] == $scope.upvote.user
      user["karma"]++
      $scope.upvotes.unshift($scope.upvote)
      $scope.comment = null
      $scope.upvote = {}
      $scope.formState = 'button'

    $scope.formState = 'button'
    $scope.showForm = ->
      $scope.formState = 'form'
  app.controller 'UserCtrl', ['$scope', '$leaderboardService', '$upvoteService', ctrl]
