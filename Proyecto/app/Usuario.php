<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    protected $fillable = ['nombre_completo', 'correo', 'contrasenha', 'nombre_completo', 'direccion', 'profesion', 'telefono'];
}
