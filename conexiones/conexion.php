<?php

$host = "localhost"; 
$usuario = "tu_usuario";  
$contrasena = "tu_contrasena";  
$baseDeDatos = "nombre_de_la_base_de_datos";  

$conexion = new mysqli($host, $usuario, $contrasena, $baseDeDatos);


if ($conexion->connect_error) {
    die("La conexión ha fallado: " . $conexion->connect_error);
} 

echo "Conexión exitosa";
?>
