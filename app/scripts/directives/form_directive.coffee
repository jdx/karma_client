define ['app'], (app) ->
  app.directive "formSlideState", ($animate) ->
    (scope, element, attrs) ->
      $(element).hide() if attrs.formSlideState != scope.formState
      scope.$watch 'formState', (state) ->
        if state == attrs.formSlideState
          $(element).slideDown('slow')
        else
          $(element).slideUp('slow')
