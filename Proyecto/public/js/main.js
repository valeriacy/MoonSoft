let app = angular.module("moonSoft", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "/publica.html",
        controller : "publicCtrl"
    }) 
    .when("/login",{
        templateUrl :"/login.html",
        controller :"loginCtrl"
    })
    .when("/bienvenido",{
        templateUrl :"/bienvenido.html",
        controller :"welcomeCtrl"
    })
});

app.controller("publicCtrl", publicCtrl);
app.controller("loginCtrl", loginCtrl);


function publicCtrl($scope, $location, $http){

}
function loginCtrl($scope, $location, $http){
   
    $scope.entrar = () => {
        let correo = document.querySelector("#correo");
        let contrasenha = document.querySelector("#contrasenha");

        let credenciales = {
            correo:correo.value,
            contrasenha:contrasenha.value
        };

        let req = {
            method: 'POST',
            url: "/api/login",
            headers: {
                'Content-Type': 'application/json'
            },
            data : JSON.stringify(credenciales)
        }
        consumirApi($http, 
                    req, 
                    (response)=>{
                        if(response.data.correcto){
                            $location.path("/bienvenido")
                        }else{
                            alert("Contraseña o usuario incorrecto")
                        }
                    },
                    (error)=>{
                        console.error(error)
                    }
                );
    };
}