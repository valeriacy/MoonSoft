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
    .when("/registro",{
        templateUrl :"/registro.html",
        controller :"registroCtrl"
    })
});

app.controller("publicCtrl", publicCtrl);
app.controller("loginCtrl", loginCtrl);
app.controller("welcomeCtrl", welcomeCtrl);
app.controller("registroCtrl", registroCtrl);


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

function welcomeCtrl($scope, $location, $http){

}

function registroCtrl($scope, $location, $http){
    $scope.registrar = () => {
        nombreCompleto = document.querySelector("#nombreAp").value;
        direccion = document.querySelector("#direccion").value;
        telefono = document.querySelector("#telefono").value;
        profesion = document.querySelector("#profesion").value;
        email = document.querySelector("#email").value;
        contrasenha = document.querySelector("#pwd").value;

        nuevo_usuario = {
            nombre_completo : nombreCompleto,
            direccion : direccion,
            telefono : telefono,
            profesion : profesion,
            correo : email,
            contrasenha : contrasenha
        }
        
        let req = {
            method: 'POST',
            url: "/api/Usuario",
            headers: {
                'Content-Type': 'application/json'
            },
            data : JSON.stringify(nuevo_usuario)
        };

        consumirApi($http, 
            req, 
            (response)=>{
                if(response.status == 200){
                    alert("Nuevo usuario registrado")
                }
            },
            (error)=>{
                console.error(error)
            }
        );
    } 
}