<jsp:include page="ValidarIngreso.jsp" />
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

   <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">    
    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.css" rel="stylesheet"> 
    <!-- Line Icons CSS -->
    <link rel="stylesheet" href="font/line-icons/line-icons.css" type="text/css">      
    <!-- Main Styles -->
    <link rel="stylesheet" href="css/main.css" type="text/css">
 
    <!-- Animate CSS -->
    <link rel="stylesheet" href="extras/animate.css" type="text/css">    
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="extras/owl.theme.css" type="text/css">  
    <!-- Slicknav Css -->
    <link rel="stylesheet" href="css/slicknav.css" type="text/css">  
    <!-- Responsive CSS Styles -->
    <link rel="stylesheet" href="css/responsive.css" type="text/css">
    
<style type="text/css">
body{
  margin:0;
  box-sizing: border-box;
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  background: #f9f6f1;
    font: 13px/1.7em 'Open Sans';
  }
 #Contenedor{

  flex: 1;
 }
</style>
<title>Sistema de administracion</title>
</head>
<body>
    <jsp:include page="Header.jsp" />

<div id="Contenedor">
 

</div>
    <jsp:include page="Footer.jsp" />	
   <!-- All js here -->
    <script type="text/javascript" src="js/jquery-min.js"></script>      
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/classie.js"></script>    
    <script type="text/javascript" src="js/slick.min.js"></script>
    <script type="text/javascript" src="js/jquery.slicknav.js"></script>
    <script type="text/javascript" src="js/main.js"></script> 
    <script>
    var inicio=0;
    var timeout=0;
 
    function empezarDetener(elemento)
    {
        if(timeout==0)
        {
            // empezar el cronometro
 
            elemento.value="Detener";
 
            // Obtenemos el valor actual
            inicio=new Date().getTime();
 
            // Guardamos el valor inicial en la base de datos del navegador
            localStorage.setItem("inicio",inicio);
 
            // iniciamos el proceso
            funcionando();
        }else{
            // detemer el cronometro
 
            elemento.value="Empezar";
            clearTimeout(timeout);
 
            // Eliminamos el valor inicial guardado
            localStorage.removeItem("inicio");
            timeout=0;
        }
    }
 
    function funcionando()
    {
        // obteneos la fecha actual
        var actual = new Date().getTime();
 
        // obtenemos la diferencia entre la fecha actual y la de inicio
        var diff=new Date(actual-inicio);
 
        // mostramos la diferencia entre la fecha actual y la inicial
        var result=LeadingZero(diff.getUTCHours())+":"+LeadingZero(diff.getUTCMinutes())+":"+LeadingZero(diff.getUTCSeconds());
        document.getElementById('crono').innerHTML = result;
 
        // Indicamos que se ejecute esta función nuevamente dentro de 1 segundo
        timeout=setTimeout("funcionando()",1000);
    }
 
    /* Funcion que pone un 0 delante de un valor si es necesario */
    function LeadingZero(Time)
    {
        return (Time < 10) ? "0" + Time : + Time;
    }
 
    window.onload=function()
    {
        if(localStorage.getItem("inicio")!=null)
        {
            // Si al iniciar el navegador, la variable inicio que se guarda
            // en la base de datos del navegador tiene valor, cargamos el valor
            // y iniciamos el proceso.
            inicio=localStorage.getItem("inicio");
            document.getElementById("boton").value="Detener";
            funcionando();
        }
    }
    
    setInterval(function(){
    	var crono=$('#crono').text();
    	
    	var res = crono.substring(3,8);
    	var res = crono.substring(3,8);
    	$('#cont').val(res);
          momentoActual = new Date() 
    	 
         hora = momentoActual.getHours() ;
         minuto = momentoActual.getMinutes(); 
         segundo = momentoActual.getSeconds() ;

         horaImprimible = hora + " : " + minuto + " : " + segundo 

    	document.getElementById("fecha_registro").value = horaImprimible; 
    	
      }, 1000);
    </script> 	
</body>
</html>