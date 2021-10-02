<?php
class Persona{
    public $dni;
    public $nombre;
    public $apellidos;
    public function __construct($dni, $nombre, $apellidos)
    {
        $this->dni=$dni;
        $this->nombre=$nombre;
        $this->apellidos=$apellidos;
        
    }
  
}

class Admi extends Persona{

}

class User extends Persona{

}

class Boleta{
    public $id;
    public $persona;
    public $monto;
    public $fecha;
    
}
?>