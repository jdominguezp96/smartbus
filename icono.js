function obtener_icono() {
        var ide = $.ajax({

            url: 'icono.php', 
            dataType: 'text',
            async: false     
        }).responseText;

        document.getElementById("icono").setAttribute("class","wi wi-owm-"+ide)
    }

    setInterval(obtener_icono,500);