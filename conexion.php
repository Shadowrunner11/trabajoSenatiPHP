<?php
interface CRUD_api{
    public function read_by_dni(int $dni, string $tabla);
}
class Conexion implements CRUD_api {
    private $con;
    public function __construct()
    {
        $this->con=new PDO("mysql:localhost", "root", "");
    }

    public function read_by_dni(int $dni, string $tabla)
    {
        $campo=($tabla=="user_db")? "Dni": "user_dni";
        
        $stament="SELECT * FROM {$tabla} WHERE {$campo}=?";
        
        $prepared=$this->con->prepare($stament);
        $prepared->bindValue(1, $dni);

        return $prepared->execute();

    }
}

?>