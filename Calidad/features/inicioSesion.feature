# language: es
Característica: Ingresar al sistema
   Como un usuario
   Quiero ingresar al sistema
   Para poder revisar las cartas recibidas

   Escenario: Ingresar al sistema
    Dado que estoy en la pagina principal
    Cuando presiono sobre el enlace "Iniciar sesion"
    Y lleno el campo de correo electronico con "valecy@gmail.com"
    Y lleno el campo de contraseña con "valeria"
    Y presiono el boton "Aceptar"
    Entonces veo el titulo "Bienvenido"

