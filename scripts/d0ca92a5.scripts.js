"use strict";angular.module("karmaClientApp",["ngCookies","ngResource","ngSanitize"]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"UserCtrl"}).otherwise({redirectTo:"/"})}]),function(){angular.module("karmaClientApp").controller("UserCtrl",["$scope","$http","$routeParams",function(a,b,c){var d;return d=c.local?"http://127.0.0.1:5000":"http://c5-karma.herokuapp.com",b.get(""+d+"/top").success(function(b){return a.users=b})}])}.call(this);