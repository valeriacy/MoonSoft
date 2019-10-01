# language: es
Característica: Ingresar al sistema
   Como un usuario
   Quiero ingresar al sistema
   Para poder revisar las cartas recibidas

   Escenario: Registrarse en el sistema
    Dado que estoy en la pagina principal
    Cuando presiono sobre el enlace "Iniciar sesion"
    Y presiono sobre el enlace "Registrate"
    Y lleno el campo "nombre" con "Lindsay Montaño"
    Y lleno el campo "direccion" con "2da Circunvalacion"
    Y lleno el campo "telefono" con "78787878"
    Y lleno el campo "profesion" con "Programadora"
    Y lleno el campo "email" con "Lindsay@gmail.com"
    Y lleno el campo "contraseña" con "lindsay"
    Y lleno el campo "repetir contraseña" con "lindsay"
    Y presiono el boton "Aceptar"
    Entonces veo el titulo "Mensajero"

   Escenario: Ingresar al sistema
    Dado que estoy en la pagina principal
    Cuando presiono sobre el enlace "Iniciar sesion"
    Y lleno el campo de correo electronico con "Lindsay@gmail.com"
    Y lleno el campo de contraseña con "lindsay"
    Y presiono el boton "Aceptar"
    Entonces veo el titulo "Bienvenido"

