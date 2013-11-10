define ['app', 'host'], (app, host) ->
  app.service '$upvoteService', ($http) ->
    this.upvote = (username) ->
      $http.post "#{host}/upvote", {user: username}
    return this
