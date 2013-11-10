require.config
  paths:
    dom_ready: '../bower_components/requirejs-domready/domReady'
    angular: '../bower_components/angular/angular'
    angular_sanitize: '../bower_components/angular-sanitize/angular-sanitize'
    angular_cookies: '../bower_components/angular-cookies/angular-cookies'
    jquery: '../bower_components/jquery/jquery'
  shim:
    angular_cookies:
      deps: ['angular']
    angular_sanitize:
      deps: ['angular']
    angular:
      exports: 'angular'
  deps: ['bootstrap']
