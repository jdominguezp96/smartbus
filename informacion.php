<?php
include "cn.php";
'charset=utf-8';

$consulta = "SELECT direccion, ciudad, region, orientacion FROM paraderos WHERE id_p='1'";

$resultado = mysqli_query($conexion, $consulta);

$arreglo = mysqli_fetch_assoc($resultado);

$direccion = $arreglo['direccion'];
$ciudad = $arreglo['ciudad'];
$region = $arreglo['region'];

if($arreglo['orientacion'] === 'IDA'){
    $orientacion = 'PUERTO';
}
else{
    $orientacion = 'PEÑABLANCA';
}
mysqli_close($conexion);