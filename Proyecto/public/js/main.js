let app = angular.module("moonSoft", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "/publica.html",
        controller : "publicCtrl"
    })
});

app.controller("publicCtrl", publicCtrl);

function publicCtrl($scope, $location, $http){

}