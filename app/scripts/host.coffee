define ->
  local = window.location.port == "9000"
  return if local then 'http://127.0.0.1:5000' else 'http://c5-karma.herokuapp.com'
