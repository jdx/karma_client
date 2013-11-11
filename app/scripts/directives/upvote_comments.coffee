define ['app'], (app) ->
  app.directive 'upvoteComments', ->
    (scope, element, attrs) ->
      scope.$watch 'upvote.user', (user) ->
        if user
          placeholder = "What did #{user} do?" if user
          element.attr 'placeholder', placeholder
          element.attr 'disabled', null
        else
          element.attr 'placeholder', null
          element.attr 'disabled', 'disabled'
