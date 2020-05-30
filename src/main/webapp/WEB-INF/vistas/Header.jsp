<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

        <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Covid 19</h3>
            </div>

            <ul class="list-unstyled components">
                <p class="active">Sistema de administracion</p>
                
                <c:forEach var="x" items="${sessionScope.objMenus}">
	              <li class="drop">
	                 <a  href="${x.ruta}">
	                     <i class=""></i><span>&nbsp;&nbsp;${x.descripcion}</span>	         
	                  </a>
	               </li>
	            </c:forEach>
                
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="#" class="download">login</a>
                </li>
                <li>
                    <a href="·" class="article">Registro</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active" >
                                <a  class="nav-link" href="#user" > ${sessionScope.objUsuario.nombres} 
							      <input type="hidden" id="id_user_id" value="${sessionScope.objUsuario.nombres} ">
							
							         <script type="text/javascript"> 
							            var input = document.getElementById("id_user_id").value;
							            if(input.trim() == ''){
								        document.getElementById("id_inicio_id").click();}
							         </script>
                             </a>
                                
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>


