<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reportes</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
</head>
<body>
<header>
		<img alt="tienda" src="Tienda.jpg" width= 130 height = 125/>
    	<div class="menu">
	        <a href = "Usuarios.jsp">
    			<button class="button"><span><i class="fas fa-users"></i> Usuarios</span></button>
  			</a>
  			<a href = "Clientes.jsp">
  				<button class="button"><span><i class="fas fa-user-tag"></i> Clientes</span></button>
  			</a>
	        <a href = "Proveedores.jsp">
	         	<button class="button"><span><i class="fas fa-truck-moving"></i> Proveedores</span></button>
	        </a>
	        <a href = "Productos.jsp">
	        	<button class="button"><span><i class="fas fa-box-open"></i> Productos</span></button>
	        </a>
	        <a href = "Ventas.jsp">
	        	<button class="button"><span><i class="fab fa-shopify"></i> Ventas</span></button>
	        </a>
	        <a href = "Reportes.jsp">
	        	<button class="button "><span><i class="fas fa-paste"></i> Reportes</span></button>
	        </a>
    	</div>
	</header>
	<div class = "contenedor">
		<div class="formularioU" >
	        <div class="btn-group">
					<a href="ListadoUsuarios.jsp">
	            		<p><button class="listaR">Listado de Usuarios</button><p>
					</a>
					<a href="ListadoClientes.jsp">
	            		<p><button class="listaR">Listado de Clientes</button></p>
					</a>
					<a href="VentasCliente.jsp">
	            		<p><button class="listaR">Ventas por Cliente</button></p>
					</a>
	        </div>
    	</div>
	</div>
</body>
</html>
