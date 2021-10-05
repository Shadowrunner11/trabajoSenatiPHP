<?php
 include "header.php";
 include "conexion.php";
 $array= json_encode((new Conexion())->get_all());

?>

<script>
    let dataSet =  JSON.parse(<?php
     echo "'{$array}'";
     ?>);
 
$(document).ready(function() {
    $('#example').DataTable( {
        data: dataSet,
        columns: [
            { data: "Dni" },
            { data: "nombre" },
            { data: "apellidos" },
        ]
    } );
} );
</script>
<table id="example" class="display" style="width:100%">
    <thead>
        <th>DNI</th>
        <th>Nombre</th>
        <th>Apellidos</th>      
    </thead>
</table>
</body>
</html>