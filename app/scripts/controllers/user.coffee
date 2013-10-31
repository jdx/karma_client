'use strict'

angular.module('karmaClientApp')
  .controller 'UserCtrl', ['$scope', '$http', (scope, http) ->
    http.defaults.useXDomain = false
    host = if local then 'http://127.0.0.1:5000' else 'http://c5-karma.herokuapp.com'
    http.get("#{host}/leaderboard").success (res) -> scope.leaderboard = res
    http.get("#{host}/users").success (res) ->
      scope.users = res
      scope.user = res[0]

    scope.upvoteUser = ->
      http.post "#{host}/upvote", {data: {user: scope.user}}
  ]