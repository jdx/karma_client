define ["./module"], (controllers) ->
  controllers.controller 'UserCtrl', ['$scope', '$http', (scope, http) ->
      host = if local then 'http://127.0.0.1:5000' else 'http://c5-karma.herokuapp.com'
      http.get("#{host}/leaderboard").success (res) -> scope.leaderboard = res
      http.get("#{host}/users").success (res) ->
        scope.users = res
        scope.user = res[0]

      scope.upvoteUser = ->
        http.post "#{host}/upvote", {user: scope.user}
        user = _.find scope.leaderboard, (user) -> user["name"] == scope.user
        user["karma"]++
    ]
