<!-- //////////////////////////// metodo get /////////////////////////////////////// -->
<?php
$nombre = $_GET["nombre"];
echo "Hola ".$nombre;
?>
<!-- segundo ejemplo -->
<h1>hola codigo facilito</h1>


<!-- //////////////////////////// metodo post /////////////////////////////////////// -->
<?php
$nombre = $_POST["nombre"];
$metodo = $_POST["metodo"];
echo "Hola ".$nombre."uso el metodo ".$metodo
?>


<!-- //////////////////////////// metodo post /////////////////////////////////////// -->
<?php
$ejemplo = array(
    "nombre" => $_GET["nombre"],
    "metodo" => $_GET["metodo"]
);
echo json_encode($ejemplo);
?>


<!-- //////////////////////////// ejemplo ajax /////////////////////////////////////// -->
<?php
    $resultado = $_POST["val1"]+ $_POST["val2"];
    echo $resultado;
?>