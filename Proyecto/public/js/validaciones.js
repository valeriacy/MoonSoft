
function deshabilitarGuardar(){
    let boton = document.querySelector("#aceptarRegistro");
    boton.disabled = true;
}

function habilitarGuardar(){
    let boton = document.querySelector("#aceptarRegistro");
    boton.disabled = false;
}

function maestroRegistro(){
    if(formularioValido()){
        habilitarGuardar()
    }else{
        deshabilitarGuardar()
    }
}

function formularioValido(){
    return contrasCoinciden() && todoLleno();
}

function contrasCoinciden(){
    let contra = document.querySelector("#contraseña");
    let confirmacion = document.querySelector("#pwd-repeat");
    let advertencia = document.querySelector("#advertencia");
    let coinciden = false;

    if(contra.value!=="" && confirmacion.value!==""){
        coinciden = contra.value === confirmacion.value;
    }

    if(coinciden){
        advertencia.style.display = "none";
    }else if(confirmacion.value!==""){
        advertencia.style.display = "block";
    }

    return coinciden;
}

function todoLleno(){
    let nombre = document.querySelector("#nombre");
    let direccion = document.querySelector("#direccion");
    let telefono = document.querySelector("#telefono");

    let profesion = document.querySelector("#profesion");

    return campoValido(nombre.value) && campoValido(direccion.value) && campoValido(telefono.value) && campoValido(profesion.value);
}
    function campoValido(cadena){
    if(cadena!==""){
        for(let caracter of cadena){
            if(!(caracter >= 'A' && caracter <= 'Z') && !(caracter >= 'a' && caracter <= 'z') && caracter != ' ')
                return false;
        }
        return true;
    }
    return false;
}

