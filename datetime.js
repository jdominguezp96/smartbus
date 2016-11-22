(function () {
    
    var actualizarHora = function(){
        var fecha = new Date(),
            horas = fecha.getHours(),
            minutos = fecha.getMinutes(),
            diaSemana = fecha.getDay(),
            dia = fecha.getDate(),
            mes = fecha.getMonth(),
            year = fecha.getFullYear();
        
        var phoras = document.getElementById('horas'),
            pminutos = document.getElementById('minutos'),
            pDiaSemana = document.getElementById('diaSemana'),
            pDia = document.getElementById('dia'),
            pMes = document.getElementById('mes'),
            pYear = document.getElementById('year');
        
        var a_semana = ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
            a_mes = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
        
        // Hora
        // Corrigiendo las horas en caso de tener 1 solo digito
        if (horas < 10){
            horas = "0" +horas;
        }
        
        if (minutos < 10){
            minutos = "0" +minutos;
        }
        
        //Hora en formato HH:MM hrs Ej: 12:34 hrs
        phoras.textContent = horas;
        pminutos.textContent = minutos;
        
    
        
        //Fecha
        pDiaSemana.textContent = a_semana[diaSemana];
        pDia.textContent = dia;
        pMes.textContent = a_mes[mes];
        pYear.textContent = year;          
    };
    
    actualizarHora();
    
    //Actualiza la hora cada segundo.
    var intervalo = setInterval(actualizarHora, 1000);
    
} ())