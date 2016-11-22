<?php
include "cn.php";

$consulta = "SELECT id_r FROM `3`";

$resultado = mysqli_query($conexion, $consulta);

$recorridos = array();

while ($arreglo = mysqli_fetch_assoc($resultado)){
    
    array_push ($recorridos, $arreglo['id_r']);
}
