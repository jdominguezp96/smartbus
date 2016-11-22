<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Smart Bus Stop</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/weather-icons.css">
        <link rel="stylesheet" href="css/weather-icons.min.css">
        <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
    </head>

    <body>
       
        
        <div class="header">
           
            <div class="fecha">
                
                <p id="diaSemana" class="diaSemana"></p>
                <p id="dia" class="dia"></p>
                <p> de </p>
                <p id="mes" class="mes"></p>
                <p>, </p>
                <p id="year" class="year"></p>
                
            </div>
            
            
            <div class="reloj">
               
                <p id="horas" class="horas"></p>
                <p>:</p>
                <p id="minutos" class="minutos"></p>
                <p > hrs</p>
                
            </div> 
            
        </div>

        <div class="center-up">
           
            <div class="center-up-left">
                <div class="line-up">                  
                    
                    <div class="icono">
                        <i id="icono"></i>
                    </div>
                
                    <div class="texteratura">
                        <p id="temperatura" class="temperatura"></p>
                        <p id="texto" class="texto"></p> 
                    </div>
                
                </div>
                
                <div class="line-down">
                    <!-- Aqui el Pronostico para las horas siguientes -->
                </div>
            </div>
            
            <div class="informacion">
                
                <p id="informacion-parada" class="informacion-parada">INFORMACION DEL PARADERO</p>
                <hr class="separador"> </hr>
                <div class="info-abajo">
                <p id="ubicacion" class="ubicacion">
                   <p class='parrafo'>UBICACION:</p>
                   <div class="php">
                    <?php
                        include "informacion.php";
                        
                       if ($ciudad === $region){
                            echo $direccion.", ".$ciudad;    
                        }
                       
                        else{
                            echo $direccion.", ".$ciudad.", ".$region;    
                        }
                       
                    ?>
                    </div>
                    
                </p>
                
                <p id="orientacion" class="orientacion">
                    <p class='parrafo'>ORIENTACION:</p>
                    <div class="php">
                    <?php
                        include "informacion.php";
                        echo $orientacion;
                    ?>
                    </div>
                </p>
                
                <p id="trafico" class="trafico">
                   <p class='parrafo'>TRAFICO:</p>
                    <div class="php-TRAFICO">
                       <?php
                        include "informacion.php";
                        echo "BAJO";
                        ?>
                    </div>
                </p>
                </div>           
            </div>
            
        </div>
        <hr class ="sep2"></hr>
        
        <div class="recorridos">
        
            <p id="titulo-recorrido" class="titulo-recorrido">TIEMPO DE ESPERA</p>
            
            <div id="lista" class="lista">
               <?php include "recorridos.php"; ?>
                <div id="a" class="a">
                   <p id="1"><?php echo $recorridos[0]; ?></p>     
                   <p id="2"><?php echo $recorridos[1]; ?></p>
                   <p id="3"><?php echo $recorridos[2]; ?></p>
                   <p id="4"><?php echo $recorridos[3]; ?></p>
                   <p id="5"><?php echo $recorridos[4]; ?></p>
                </div>
                
                <div id="b" class="b">
                    <p id="6"><?php echo $recorridos[5]; ?></p>
                    <p id="7"><?php echo $recorridos[6]; ?></p>
                    <p id="8"><?php echo $recorridos[7]; ?></p>
                    <p id="9"><?php echo $recorridos[8]; ?></p>
                    <p id="10"><?php echo $recorridos[9]; ?></p>
                </div>
                
                <div id="c" class="c">
                    <p id="11"><?php echo $recorridos[10]; ?></p>                    
                    <p id="12"><?php echo $recorridos[11]; ?></p>
                    <p id="13"><?php echo $recorridos[12]; ?></p>
                    <p id="14"><?php echo $recorridos[13]; ?></p>
                    <p id="15"><?php echo $recorridos[14]; ?></p>
                </div>
                
                <div id = "d" class="d">
                    <p id="16"><?php echo $recorridos[15]; ?></p>
                    <p id="17"><?php echo $recorridos[16]; ?></p>
                    <p id="18"><?php echo $recorridos[17]; ?></p>
                    <p id="19"><?php echo $recorridos[18]; ?></p>
                    <p id="20"><?php echo $recorridos[19]; ?></p>
                </div>
                
                <div id="e" class="e">
                    <p id="21"><?php echo $recorridos[20]; ?></p>                    
                    <p id="22"><?php echo $recorridos[21]; ?></p>
                    <p id="23"><?php echo $recorridos[22]; ?></p>
                    <p id="24"><?php echo $recorridos[23]; ?></p>
                    <p id="25"><?php echo $recorridos[24]; ?></p>
                </div>
                
                <div id="f" class="f">
                    <p id="26"><?php echo $recorridos[25]; ?></p>
                    <p id="27"><?php echo $recorridos[26]; ?></p>
                    <p id="28"><?php echo $recorridos[27]; ?></p>
                    <p id="29"><?php echo $recorridos[28]; ?></p>
                    <p id="30"><?php echo $recorridos[29]; ?></p>
                </div>
                
            </div>
        </div>
       <div class="bottom"> </div>
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="icono.js"></script>
        <script src="datetime.js"></script>
        <script src="temperatura.js"></script>
        <script src="tiempo.js"></script>        
    </body>

</html>