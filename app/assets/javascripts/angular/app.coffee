@chartPlotter = angular.module("ChartPlotter", [
  "ngRoute",
  "highcharts-ng",
  "templates"
]).config ($routeProvider, $locationProvider) ->
  $routeProvider.when("/",
    templateUrl: "home.html"
    controller: "HomeCtrl")
    .when("/users",
    templateUrl: "users/index.html"
    controller: "UsersCtrl")
    .when("/activities",
    templateUrl: "activities/index.html"
    controller: "ActivitiesCtrl")
    .when("/users/new",
    templateUrl: "users/new.html"
    controller: "UsersCtrl")

  $locationProvider.html5Mode true
  
