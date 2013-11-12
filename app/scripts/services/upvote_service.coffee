define ['app', 'host'], (app, host) ->
  app.service '$upvoteService', ($http) ->
    this.upvote = (username, comments) ->
      $http.post "#{host}/upvote", {user: username, comments: comments}
    this.getUpvotes = ->
      $http.get "#{host}/upvotes"
    return this
