function obtener_tiempo() {
        var tiempo = $.ajax({

            url: 'tiempo.php', //indicamos la ruta donde se genera la hora
            dataType: 'text',//indicamos que es de tipo texto plano
            async: false     //ponemos el parámetro asyn a falso
        }).responseText;

        //actualizamos el div que nos mostrará la hora actual
        document.getElementById("texto").textContent = tiempo;
        //document.getElementById("iconox").className += tiempo;
    }

    //con esta funcion llamamos a la función getTimeAJAX cada segundo para actualizar el div que mostrará la hora
    setInterval(obtener_tiempo,500);
