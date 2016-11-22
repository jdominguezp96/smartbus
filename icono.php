<?php
$result = file_get_contents('http://api.openweathermap.org/data/2.5/weather?q=Valparaiso,cl&APPID=701ea9e9fe8838b1fa72acf95546dc00&lang=es&units=metric&type=accurate');

$jason = json_decode($result, true);
echo $jason['weather'][0]['id'];