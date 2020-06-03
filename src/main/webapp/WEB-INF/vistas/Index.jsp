<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> 
   
<link rel="stylesheet" href="css/bootstrap.css" > 
  
 <link rel="stylesheet" href="css/style.css">  
 <link rel="stylesheet" href="css/admin.css" type="text/css">
 <style>
    .boxlogin {
        width: 400px;
        margin: 100px auto;
    }
</style> 
<title>Sistemas de administracion</title>
</head>   
<body style="background-color: white !important">  


<div class="wrapper">
	<!-- Sidebar Holder -->
	<nav id="sidebar">
		<div class="sidebar-header" style="background-color:#fafafa">
			<svg height="50" viewBox="0 0 200 50" width="200" id="svg2" version="1.1" inkscape:version="0.91 r" sodipodi:docname="logo-white.svg">
				<g id="g16" style="fill:none;fill-rule:evenodd" transform="translate(-16.125799,12.131785)">
					<g transform="matrix(1.5654206,0,0,1.5894043,15.928871,-12.783262)" id="g20" style="fill:#372f2f;fill-rule:evenodd">
						<g id="g22">
							<path d="m 0.12579907,8.1618462 0,6.0365128 0,6.036923 c 0,1.908103 0.47806151,3.438359 1.08555453,4.761436 0.5845294,1.284102 0.9331594,1.681231 1.7306244,2.696615 1.1456775,1.459282 3.38526,2.914052 5.2899907,3.542564 2.8011483,0.930872 5.9505093,0.850052 8.6606373,-0.349538 0.326084,-0.141539 0.630039,-0.302359 0.971571,-0.472205 3.407807,-1.657846 6.186409,-5.909334 6.186409,-9.683282 l 0,-6.390975 0,-6.395897 c 0,-0.8258462 -0.858423,-1.7001026 -1.951076,-1.7001026 l -9.973741,0 -9.9733231,0 c -1.1010028,0 -2.02664683,0.8406154 -2.02664683,1.9179487 z m 2.81617893,8.0959998 18.292429,0 0,-7.1753845 -18.292429,0 z m 0,3.835077 0,-1.28 18.292429,0 c 0,1.072821 0.09853,2.829128 -0.364496,3.764923 l -17.6319106,0 C 3.1691094,21.779487 2.941978,21.547692 2.941978,20.092923 Z m 1.5181062,5.044923 15.1881598,0 c -0.09102,0.326154 -1.002467,1.32718 -1.222501,1.502359 -0.280574,0.221539 -0.455515,0.387282 -0.75112,0.604308 -2.945193,2.163282 -7.195974,2.43241 -10.3077578,0.576 C 6.137266,27.088615 5.2491989,26.290667 4.4600842,25.137846 Z" id="path24" inkscape:connector-curvature="0"></path>
							<path d="m 0.27706692,1.9940513 c 0,1.0252308 0.75153778,1.681641 1.68511458,1.7620513 C 3.305764,3.8689231 4.4063493,2.0838974 3.2982486,0.87897436 3.0022263,0.55323077 2.5922207,0.38830769 2.1667668,0.35466667 l -0.2425797,0 C 1.0816298,0.41620513 0.27706692,1.0020513 0.27706692,1.9940513" mask="url(#a)" transform="translate(2.087605,0.055385)" id="path26" inkscape:connector-curvature="0"></path>
							<path d="m 0.20082759,1.923159 c 0,1.7571282 1.86715381,2.3195897 2.91429631,1.3698461 1.123549,-1.0203077 0.3649134,-2.93825638 -1.0321118,-2.93825638 -0.6145909,0 -0.9795042,0.0475897 -1.43418451,0.52020513 -0.2050028,0.21210255 -0.448,0.65599995 -0.448,1.04820515" mask="url(#b)" transform="translate(7.515377,0.055385)" id="path28" inkscape:connector-curvature="0"></path>
							<path d="m 0.12396198,1.8524308 c 0,0.8266666 0.22796645,1.4453333 1.07762162,1.776 C 2.5906759,4.1712 3.9947989,2.7734564 3.4486814,1.4274051 3.1681074,0.73284103 2.6061241,0.40668718 2.0140794,0.35458462 l -0.3039553,0 C 0.89053048,0.42596923 0.12396198,1.0019692 0.12396198,1.8524308" mask="url(#c)" transform="translate(12.94315,0.055385)" id="path30" inkscape:connector-curvature="0"></path>
							<path d="m 2.1273946,3.7702974 c 0.4475825,0 0.9636384,-0.2785641 1.214151,-0.5103589 C 4.0170945,2.6363487 4.0170945,1.5405539 3.410019,0.87922051 3.1139966,0.55798974 2.7039911,0.38814359 2.2864701,0.35450256 l -0.2505126,0 C 1.170854,0.41604103 0.34374501,1.0539897 0.41180093,2.1264 0.4648261,3.0802462 1.2848373,3.7702974 2.1273946,3.7702974" mask="url(#d)" transform="translate(17.953402,0.055385)" id="path32" inkscape:connector-curvature="0"></path>
						</g>
						<path d="m 56.149066,14.685905 -1.987004,0 c 0,-3.554787 -0.208209,-3.034202 0.715343,-3.159447 0.615884,-0.08168 2.04657,0.06861 2.434025,0.589197 0.348108,0.470486 0.54648,2.57025 -1.162364,2.57025 z M 55.9108,22.880211 c 2.493044,-0.08114 5.165881,-0.676324 5.165881,-3.761713 0,-1.197454 -0.318052,-2.927472 -1.520309,-3.203011 l 0,-0.188957 c 0.944318,-0.250491 1.043778,-2.425946 1.043778,-3.209546 0,-3.003163 -2.950995,-3.5798357 -5.96101,-3.5798357 -0.735016,0 -1.638895,0.024505 -2.324728,0.1317798 -0.834476,0.1252453 -1.271114,0.2624705 -1.271114,1.1914639 l 0,11.403851 c 0,1.15988 1.112088,1.215968 2.274452,1.215968 z M 56.149066,20.341 c -1.231221,0 -1.987004,0.182423 -1.987004,-0.281529 l 0,-3.110439 c 1.808851,0 3.835201,-0.401329 3.835201,1.79373 0,1.103247 -0.735016,1.598238 -1.848197,1.598238 z" id="path34" inkscape:connector-curvature="0"></path>
						<path d="m 78.213983,9.908398 c 0,1.868332 -0.159026,11.568304 0.07979,12.58987 0.764526,0.181878 1.659115,0.09366 2.464081,0.09366 0.794036,0 0.566154,-0.65182 0.566154,-2.155852 l 0,-2.822375 c 0.685286,0.05718 0.287995,0.194947 1.131761,0 0.675996,1.298195 1.361283,2.596389 2.047116,3.887504 0.69567,1.379331 0.397291,1.090723 3.34774,1.090723 0.258485,0 0.258485,-0.04356 0.477077,-0.09366 0,-0.983992 -2.49359,-4.470711 -2.752076,-5.542374 0.536644,-0.125246 1.261824,-0.752017 1.560202,-1.178939 0.784746,-1.127752 0.714797,-1.660861 0.714797,-2.953065 0,-5.1595601 -8.236009,-4.0813619 -9.139887,-3.7301306 -0.307669,0.1252452 -0.496751,0.4389029 -0.496751,0.8146386 m 3.298556,5.072432 -0.287995,0 0,-3.096824 c 0,-0.313658 0.15848,-0.257025 0.446475,-0.307123 1.24215,-0.219996 2.961378,0.0245 2.961378,1.529625 0,0.658355 0,1.504577 -1.033395,1.793185 -0.884752,0.237966 -1.191874,0.08114 -2.086463,0.08114" id="path36" inkscape:connector-curvature="0"></path>
						<path d="m 104.69031,9.6893277 0,12.6334333 c 0,0.219996 0.25794,0.476477 0.47653,0.476477 l 8.03709,0 c 0.60605,0 0.37762,-1.266611 0.37762,-2.551736 0,-0.219451 -0.14865,-0.37628 -0.37762,-0.37628 l -5.2954,0 0,-2.733614 c 1.09351,0 3.73574,0.113265 4.63962,-0.09366 0.16887,-0.721521 0.0891,-1.304184 0.0891,-2.169465 0,-0.219452 -0.15848,-0.37628 -0.37653,-0.37628 l -4.35217,0 0,-2.639408 c 1.15253,0 4.29206,0.119255 5.20632,-0.09421 0.16887,-0.727511 0.0891,-1.391311 0.0891,-2.2631271 0,-0.219996 -0.14919,-0.3768249 -0.37707,-0.3768249 l -7.75948,0 c -0.28799,0 -0.37707,0.2760841 -0.37707,0.5646927" id="path38" inkscape:connector-curvature="0"></path>
						<path d="m 65.140365,9.6893277 c 0,1.9118963 -0.149189,11.9750793 0.09946,13.0097133 0.784746,0.181334 7.907574,0.181334 8.702703,0 0.178153,-0.75855 0.08908,-1.655415 0.08908,-2.451539 0,-0.219452 -0.149189,-0.37628 -0.377618,-0.37628 l -5.394309,0 0,-2.733614 c 1.103344,0 3.834654,0.118711 4.738533,-0.09366 0.168862,-0.721521 0.08962,-1.304184 0.08962,-2.169465 0,-0.219452 -0.159025,-0.37628 -0.377618,-0.37628 l -4.450537,0 0,-2.639408 4.738533,0 c 0.894588,0 0.655776,-0.759095 0.655776,-2.1694653 0,-0.2886086 -0.07924,-0.5646927 -0.377071,-0.5646927 l -7.759478,0 c -0.287995,0 -0.377071,0.2760841 -0.377071,0.5646927" id="path40" inkscape:connector-curvature="0"></path>
						<path d="m 28.540595,15.34426 c 0,2.326294 0.348108,3.811811 2.047116,5.49282 1.430686,1.422895 2.979959,1.974519 4.401355,2.043131 l 0.724633,0 c 2.493044,-0.125245 4.450537,-1.591703 4.450537,-2.06219 0,-0.282618 -0.62572,-0.771075 -0.824639,-0.965477 -1.509379,-1.505121 -0.70496,-0.877806 -2.284835,-0.345241 -2.970668,1.003595 -5.21561,-1.215968 -5.21561,-3.310287 l 0,-0.658354 c 0,-2.783712 2.612177,-4.269229 5.195937,-3.291227 1.281497,0.489001 0.903879,1.084188 2.116519,-0.357766 0.198372,-0.237966 0.824093,-0.6638 0.824093,-0.970923 0,-0.432913 -1.172201,-1.172949 -1.579329,-1.3488369 -1.778794,-0.758006 -4.431411,-0.7710751 -6.179056,0.1192553 -1.88809,0.9534976 -3.676721,3.3609286 -3.676721,5.6550956" id="path42" inkscape:connector-curvature="0"></path>
						<path d="m 116.61146,15.821281 c 0,4.319871 2.97066,6.764876 6.12003,7.05893 l 1.36074,0 c 0.71534,-0.06262 1.43068,-0.243956 2.08646,-0.545089 0.5361,-0.23851 1.7083,-0.865281 1.7083,-1.517101 0,-0.300588 -1.5296,-1.699523 -1.80776,-1.887391 -0.97383,0.50806 -1.2416,0.846767 -2.56299,0.846767 -4.77843,0 -4.63962,-7.824561 -0.4667,-7.824561 3.10948,0 2.41381,1.892837 3.86417,0.08114 0.3481,-0.432913 0.57653,-0.488456 0.86453,-1.021565 -0.97328,-1.8438282 -3.22861,-1.981598 -5.20578,-1.981598 -3.31823,0 -5.96101,3.191031 -5.96101,6.790471" id="path44" inkscape:connector-curvature="0"></path>
						<path d="m 90.880965,9.6893277 c 0,2.7270793 -0.655777,2.1694653 3.496382,2.1694653 0,1.698435 -0.138259,9.836653 0.100006,10.840248 0.764526,0.181334 1.659662,0.100197 2.453698,0.100197 0.287995,0 0.566154,-0.08767 0.566154,-0.382815 l 0,-10.55763 3.129145,0 c 0.59621,0 0.37762,-1.1479 0.37762,-2.3573331 0,-0.219996 -0.15903,-0.3768249 -0.37762,-0.3768249 l -9.368314,0 c -0.297285,0 -0.377071,0.2760841 -0.377071,0.5646927" id="path46" inkscape:connector-curvature="0"></path>
						<path d="m 43.383061,9.3694623 0,12.6900657 c 0,0.821173 0.655777,0.563604 2.74224,0.563604 0.218046,0 0.377618,-0.156284 0.377618,-0.375736 l 0,-12.8779337 c 0,-0.6202363 -1.380956,-0.3762803 -2.74224,-0.3762803 -0.218045,0 -0.377618,0.1573734 -0.377618,0.3762803" id="path48" inkscape:connector-curvature="0"></path>
					</g>
				</g>
			</svg>
		</div>
		<ul class="list-unstyled components" style="height: 65vh;">
			<li class="active">
				<a id="btn-Home" href="/verIndex" class="link-layout">
					<span class="v-icon" style="      margin-right: 30px;
">
						<img src="img/iconos/layout/casa.png" style= "height:20px;width:20px">
						</span> Home


                                
					
					
					</a>
				</li>
				<c:forEach var="x" items="${sessionScope.objMenus}">
					<li class="">
						<a id="btn${x.descripcion}" class="link-layout"  href="${x.ruta}">
							<span class="v-icon" style="      margin-right: 30px;
">
								<img src="img/iconos/layout/${x.icono}.png" style= "height:20px;width:20px">
								</span>${x.descripcion}
						
							
							</a>
						</li>
					</c:forEach>
					<li class="active">
				<a id="a-btnHome" href="/Home/menu" class="link-layout">
					<span class="v-icon" style="      margin-right: 30px;
">
						<img src="img/iconos/layout/ubicacion.png" style= "height:20px;width:20px">
						</span> Mapep de Riesgo


                                
					
					
					</a>
				</li>
				<li class="active">
				<a id="a-btnHome" href="/Home/menu" class="link-layout">
					<span class="v-icon" style="      margin-right: 30px;
">
						<img src="img/iconos/layout/informacion.png" style= "height:20px;width:20px">
						</span> Acerca de
                       

                                
					
					
					</a>
				</li>
				</ul>
				<ul class="list-unstyled CTAs">
					<li>
					
						<c:if test="${requestScope.objUsuario.nombres != '' }">
							<a href="/logout" class="article">Close</a>
						</c:if>
						<c:if test="${requestScope.objUsuario.nombres == ''  }">
							<a id="btn-login" href="/verLogin" class="article">Login</a>
							<a id="btn-Registrar" href="/verregistroUsuario" class="register">Registrarse</a>
						</c:if>
					</ul>
				</nav>
				<!-- Page Content Holder -->
				<div id="content" class="container">
					<nav class="navbar navbar-default">
						<div class="">
							<div class="navbar-header">
								<div style="        float: left
">
									<button style="background:#5DCFF3 !important" type="button" id="sidebarCollapse" class="navbar-btn">
										<span></span>
										<span></span>
										<span></span>
									</button>
								</div>
								<div class="titulo" style="float: right; padding-left: 2rem;">
									Covid 19  
								</div>
							</div>
							<div  class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav navbar-right" >
									<c:if test="${requestScope.objUsuario.nombres  != '' }">
										<li class="" style="margin-right:2rem;margin-left:2rem;">
										<a style="text-transform:capitalize;" href="#" id="user">
                                                <span style="text-transform:capitalize;margin-right:.5rem">
                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" width="14px" height="14px" viewBox="0 0 28.055 28.055" style="enable-background:new 0 0 14 14;" xml:space="preserve">
                                                    <g>
                                                    <path fill="#d9a4fc" d="M14.249,1.027c-0.036,0-0.07,0.009-0.104,0.009c-0.106-0.003-0.211-0.01-0.318-0.009H14.249z M14.085,17.301   c-0.019,0-0.036-0.003-0.055-0.003c-0.014,0-0.027,0.003-0.041,0.003H14.085z M8.137,11.313c0.015-0.003,0.026-0.019,0.042-0.023   c0.941,3.405,3.377,5.953,5.852,6.007c2.254-0.104,5.022-2.606,5.944-5.994c0.424,0.026,0.848-0.474,0.967-1.17   c0.123-0.726-0.135-1.374-0.572-1.449c-0.028-0.005-0.057,0.013-0.084,0.014c-0.127-5.603-2.789-7.579-6.141-7.664   C10.688,1.051,7.593,3.453,7.789,8.7c-0.033,0-0.064-0.021-0.096-0.015C7.254,8.76,6.998,9.408,7.121,10.134   C7.241,10.858,7.697,11.386,8.137,11.313z M18.688,18.27l-3.141,6.146l-0.496-3.997l0.775-0.636h-1.878h-1.717l0.776,0.636   l-0.497,3.997L9.373,18.27C3.917,19.005,0,21.343,0,27.027h28.055C28.057,21.342,24.141,19.006,18.688,18.27z"></path>

																</g>
															</svg>
                                                </span> ${sessionScope.objUsuario.nombres} 

                                            </a>
											
										</li>
										<li>
											<a style="background-color:transparent !important" class="cart-icon cart-btn" onclik="" href="/logout">
												<span class="hidden-mobile">
													<svg
														xmlns="http://www.w3.org/2000/svg" height="14pt" viewBox="0 0 512 512" width="14pt">
														<path d="m416 512h-320c-53.023438 0-96-42.976562-96-96v-320c0-53.023438 42.976562-96 96-96h320c53.023438 0 96 42.976562 96 96v320c0 53.023438-42.976562 96-96 96zm0 0" fill="#fff"></path>
														<path d="m288 202.671875c-5.886719 0-10.671875-4.769531-10.671875-10.671875v-32c0-5.886719-4.785156-10.671875-10.671875-10.671875h-114.65625c-5.886719 0-10.671875-4.769531-10.671875-10.671875s4.769531-10.65625 10.671875-10.65625h114.671875c17.648437 0 32 14.351562 32 32v32c0 5.886719-4.769531 10.671875-10.671875 10.671875zm0 0" fill="#d9a4fc"></path>
														<path d="m266.671875 352h-37.328125c-5.886719 0-10.671875-4.769531-10.671875-10.671875 0-5.886719 4.769531-10.671875 10.671875-10.671875h37.328125c5.886719 0 10.671875-4.785156 10.671875-10.671875v-42.671875c0-5.886719 4.769531-10.671875 10.671875-10.671875 5.886719 0 10.671875 4.765625 10.671875 10.671875v42.6875c-.015625 17.648438-14.367188 32-32.015625 32zm0 0" fill="#d9a4fc"></path>
														<g fill="#be63f9">
															<path d="m220.128906 150.367188-64.175781-21.375c-2.144531-.671876-4.320313-.992188-6.625-.992188-11.761719 0-21.328125 9.566406-21.328125 21.328125v192c0 9.085937 5.792969 17.230469 14.527344 20.289063l64.242187 21.40625c2.191407.671874 4.335938.976562 6.558594.976562 11.761719 0 21.328125-9.566406 21.328125-21.328125v-192c.015625-9.121094-5.792969-17.265625-14.527344-20.304687zm0 0"></path>
															<path d="m326.574219 287.183594c-3.980469-1.648438-6.574219-5.535156-6.574219-9.855469v-32h-42.671875c-5.886719 0-10.671875-4.785156-10.671875-10.671875s4.785156-10.65625 10.671875-10.65625h42.671875v-32c0-4.320312 2.59375-8.207031 6.574219-9.855469 3.984375-1.648437 8.578125-.738281 11.632812 2.320313l42.671875 42.671875c4.160156 4.160156 4.160156 10.910156 0 15.085937l-42.671875 42.671875c-3.054687 3.027344-7.632812 3.9375-11.632812 2.289063zm0 0"></path>
														</g>
													</svg>
												</span>
											</a>
										</li>
									</c:if>
									<c:if test="${requestScope.objUsuario.nombres == ''  }">
										<li>
											<a style="background-color:transparent !important;text-align:center" class="cart-icon cart-btn" onclik="" href="/">
												<span class="hidden-mobile">
													<svg
														xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="14pt" height="14pt">
														<rect x="252.902" y="48.099" style="fill:#415E72;" width="138.747" height="412.545"></rect>
														<polygon style="fill:#CFDCE5;" points="252.39,485.439 397.281,485.439 419.482,485.439 419.482,463.237 419.482,48.762   419.482,26.561 397.281,26.561 252.39,26.561 252.39,70.963 375.08,70.963 375.08,441.037 252.39,441.037 "></polygon>
														<polygon style="fill:#BAC6CC;" points="275.376,512 92.519,475.429 92.519,48.762 275.376,0 "></polygon>
														<polygon style="fill:#415E72;" points="240.711,286.194 193.573,282.867 193.573,267.009 240.711,263.681 "></polygon>
													</svg>
												</span>
												<span style="display:none"></span>
											</a>
										</li>
									</c:if>
								</ul>
							</div>
						</div>
					</nav>
					<div class="row " style="padding:1rem 2rem;justify-content: center!important;text-align: center;">
					 <div class="col-md-12" style="margin:.5rem 0px;">
					A nivel mundial : 6.484.939 casos detectados, 382.368 fallecidos,
					 3.010.483 pacientes recuperados y 2902 casos activos, la letalidad es de 5.90%
					 </div>
					 </div>
					<div class="row " style="padding:1rem 2rem;justify-content: center!important;">
        <div class="col-md-3" style="margin:.5rem 0px;">
            <div class="card h-50">

                <div class="card-body" style="background-color:#8faffb;padding:.5rem .5rem;text-align:center">
                    <h5 class="card-title">Pruebas</h5>
                    <h2 class="card-text">504.930</h2>
                </div>
            </div>
        </div>
        <div class="col-md-3"  style="margin:.5rem 0px;">
            <div class="card h-50">

                <div class="card-body" style="background-color:#8faffb;padding:.5rem 1.5rem;text-align:center">
                    <h5 class="card-title">trijae</h5>
                    <h2 class="card-text">604.930</h2>
                </div>
            </div>
        </div>
        <div class="col-md-3"  style="margin:.5rem 0px;">
            <div class="card h-50">

                <div class="card-body" style="background-color:#8faffb;padding:.5rem 1.5rem;text-align:center">
                    <h5 class="card-title">Pruebas</h5>
                    <h2 class="card-text">504.930</h2>
                </div>
            </div>
        </div>
        <div class="col-md-3"  style="margin:.5rem 0px;">
            <div class="card h-50">

                <div class="card-body" style="background-color:#8faffb;padding:.5rem 1.5rem;text-align:center">
                    <h5 class="card-title">trijae</h5>
                    <h2 class="card-text">604.930</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="padding:1rem 2rem;justify-content: center!important;">
        <div class="col-md-3"  style="margin:.5rem 0px;">
            <div class="card h-50">

                <div class="card-body" style="background-color:#8faffb;padding:.5rem 1.5rem;text-align:center">
                    <h5 class="card-title">Pruebas</h5>
                    <h2 class="card-text">504.930</h2>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-50">

                <div class="card-body" style="background-color:#8faffb;padding:.5rem 1.5rem;text-align:center">
                    <h5 class="card-title">trijae</h5>
                    <h2 class="card-text">604.930</h2>
                </div>
            </div>
        </div>
        

    </div>
				</div>
			
				
				

			</div>
   


 <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="js/jquery-min.js"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script src="js/scriptUsuario.js"></script>
    



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