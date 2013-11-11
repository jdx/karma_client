tests = []
tests.push 'angular_animate'
tests.push 'main'
tests.push 'angular_mocks'
for file in Object.keys(window.__karma__.files)
  if /spec\.js$/.test file
    tests.push file

requirejs.config
  baseUrl: '/base/app/scripts'
  paths:
    angular: '/base/app/bower_components/angular/angular'
    angular_mocks: '/base/app/bower_components/angular-mocks/angular-mocks'
    angular_animate: '/base/app/bower_components/angular-animate/angular-animate'
    angular_route: '/base/app/bower_components/angular-route/angular-route'
  shim:
    angular_mocks:
      deps: ["angular"]
      exports: 'angular.mock'
    angular_route: { deps: ["angular"] }
    angular_animate: { deps: ["angular"] }
  deps: tests
  callback: window.__karma__.start
