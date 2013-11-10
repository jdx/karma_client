define ['require', 'angular', 'app', 'routes'], (require, ng) ->
  require ['dom_ready!'], (document) ->
    ng.bootstrap(document, ['app'])
