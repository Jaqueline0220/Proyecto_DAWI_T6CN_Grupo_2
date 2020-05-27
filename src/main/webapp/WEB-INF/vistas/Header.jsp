<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!-- Header Section Start -->
    <div class="header">

        <!-- Start Top Bar -->
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-2">
                        <div class="language-wrapper">

                            <div class="box-currency">

                            </div>
                            <a href="#"><i class="icon-phone"></i> Call Us: (123) 456- 789</a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    
                    <div class="col-md-8 col-sm-10">
                       			<div class="nav-collapse">
                       			
				<ul class="nav pull-right">
					
			
					<li class="dropdown">	
					    <a id="id_inicio_id" style="visibility: hidden;" href="Index.jsp"></a>					
						<a style="color:#000" href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user fa fa-user"></i> 
							
							${sessionScope.objUsuario.nombres} 
							<input type="hidden" id="id_user_id" value="${sessionScope.objUsuario.nombres} ">
							
							<script type="text/javascript"> 
							var input = document.getElementById("id_user_id").value;
							if(input.trim() == ''){
								document.getElementById("id_inicio_id").click(); 
							}
							</script>
						</a>
						
						<ul style="min-width: auto !important;right: 0 !important" class="dropdown-menu">
						   
						    
							  <li ><a href="PerfilUsuario.jsp" ><i class="fa fa-pencil"></i> Mi Perfil</a></li>
								<li><a href="logout">Salir</a></li>
						</ul>						
					</li>
				</ul>
			
				
				
			</div><!--/.nav-collapse -->
                        

                    </div>
                </div>
            </div>
        </div>
        <!-- End Top Bar -->
        <!-- Start  Logo & Naviagtion  -->
        <nav class="navbar navbar-default" data-spy="affix" data-offset-top="50">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <!-- Stat Toggle Nav Link For Mobiles -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a style="margin-top:1rem !important;" class="active navbar-brand" href="index.html">
                          <img style="margin-top:-1rem;padding: 0;" height="34px" src="img/logo.png">
                        <span style="margin-left:1.1rem;margin-top:-3rem !important;padding: 0; color: #000000;font-weight: bold;">AdminCert</span>
                        </a>
                        </div>
                    <div class="navbar-collapse collapse">
                         <ul class="nav navbar-nav navbar-right">                    
                            <li class="drop">
                                  <a class="active"  href="Index.jsp"> <i class="icon-home"></i>&nbsp; Home</a>                         
                          
                           
                                     
                                           
                                                <c:forEach var="x" items="${sessionScope.objMenus}">
	                                                  <li class="drop">
	                                                       <a  href="${x.ruta}">
	                                                             <i class="${x.avatar}"></i><span>&nbsp;&nbsp;${x.descripcion}</span>	         
	                                                        </a>
	                                                  </li>
	                                             </c:forEach>

                                
   

                        </ul>

                   
                    </div>
                       
                        <!-- End Navigation List -->
                    </div>
                  
            </div>
            <!-- End Header Logo & Naviagtion -->
            <!-- Mobile Menu Start -->
            <ul class="mobile-menu">
          
                                        <c:forEach var="x" items="${sessionScope.objMenus}">
	                                                  <li class="">
	                                                       <a  href="${x.ruta}">
	                                                             <i class="${x.avatar}"></i><span>${x.descripcion}</span>	         
	                                                        </a>
	                                                  </li>
	                                             </c:forEach>

            </ul>
            <!-- Mobile Menu End -->
        </nav>
    </div>
    <!-- Header Section End -->

