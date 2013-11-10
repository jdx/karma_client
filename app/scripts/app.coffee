window.local = window.location.port == "9000"

define ['angular', 'controllers/index'], (ng) ->
  ng.module 'app', ['app.controllers']
