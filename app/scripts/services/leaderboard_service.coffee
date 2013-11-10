define ['app', 'host'], (app, host) ->
  app.service '$leaderboardService', ($http) ->
    this.get = ->
      return $http.get("#{host}/leaderboard")
    return this
