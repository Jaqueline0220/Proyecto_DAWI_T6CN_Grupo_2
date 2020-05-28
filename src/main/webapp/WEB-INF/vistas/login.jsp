<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 


   <link rel="shortcut icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">    
    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.css" rel="stylesheet"> 
    <!-- Line Icons CSS -->
    <link rel="stylesheet" href="font/line-icons/line-icons.css" type="text/css">      

    <!-- Animate CSS -->
    <link rel="stylesheet" href="extras/animate.css" type="text/css">    

 <link rel="stylesheet" href="css/admin.css" type="text/css">

 <style type="text/css">
 .login{

 font-size: 12px;
    line-height: 1.42857;

    height: 30px;
    border-radius: 0px;
    box-shadow: none;
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
     }
 </style>
<title>Sistemas de administracion</title>
</head>   
<body style="background: #f9f6f1 !important;">    
<div class="wrapper" style="margin-top: -4rem;">

  <div class="login_page">
  <div class="login_content">
  <div class="panel-heading border login_heading">INICIAR SESSION</div>	
 <form id="id_form"   action="login" method="post" name="form1"  role="form" class="form-horizontal" >
 
				    <div class="form-group">
     
        <div class="col-sm-10">
              <span>
				<c:if test="${requestScope.MENSAJES != null }">
               		<div class="alert alert-danger fade in" id="success-alert">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong>${requestScope.MENSAJES}</strong>
				    </div>
				    </c:if></span>
        </div>
      </div>
      <div class="form-group">
        
        <div class="col-sm-10">
          <input type="text" placeholder="Email" id="inputEmail3" class="form-control" name="correo">
        </div>
      </div>
      <div class="form-group">
        
        <div class="col-sm-10">
          <input type="password" placeholder="Password" id="inputPassword3" class="form-control" name="password"  >
        </div>
      </div>
      <div class="form-group">
        <div class=" col-sm-10">
          <div class="checkbox checkbox_margin">
            
              <span class="login-checkbox">
					<input id="Field" name="campos[]" id="checkbox4" type="checkbox" value="4" onchange="enviar();" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Aceptar ternimos y condiciones</label>
				</span>
            
              	</div>
              	
        </div>
      </div>
      <div class="form-group">
        <div class=" col-sm-10">
        <input disabled type="submit" class="button btn btn-success btn-large login" value="Login" id="registrar" >				
			
        </div>
      </div>
    </form>
 </div>
  </div>
   </div>



  <script type="text/javascript" src="js/jquery-min.js"></script>      
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/classie.js"></script>    
    <script type="text/javascript" src="js/slick.min.js"></script>
    <script type="text/javascript" src="js/jquery.slicknav.js"></script>
    <script type="text/javascript" src="js/main.js"></script>  
     
<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>


<script type="text/javascript">

function enviar(){
    document.form1.registrar.disabled = true;
    for (i=0;i<document.form1.elements.length;i++){
        if(document.form1.elements[i].type == "checkbox"){
            if(document.form1.elements[i].checked == 1 ){
                document.form1.registrar.disabled = false;
                i=document.form1.elements.length+10;
               
            }
        }
    }
}


</script>

</body>
</html>