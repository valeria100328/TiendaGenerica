<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuarios</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<img alt="tienda" src="Tienda.jpg" width= 130 height = 125/>
    	<div class="menu">
	        <a href = "Usuario.jsp">
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
			<form action="UsuarioProceso.jsp" method="post"> 
        		<table border="0">
        			<tr>
          				<td height="30px"></td>
        			</tr>
        			<tr>
          				<td>C�dula:</td>
          				<td><input type="text" name="Cedula"></td>
          				<td width="100px"></td>
          				<td>Usuario:</td>
          				<td><input type="text" name="Usuario"></td>
          				<td width="100px"></td>
        			</tr>
        			<tr>
         				<td height="20px"></td>
        			</tr>
        			<tr>
				        <td>Nombre Completo:</td>
				        <td><input type="text" name="Nombre"></td>
				        <td width="100px"></td>
				        <td>Contrase�a:</td>
				        <td><input type="password" name="Contrasena" ></td>
        			</tr>
        			<tr>
          				<td height="20px"></td>
        			</tr>
        			<tr>
          				<td>Correo electr�nico:</td>
          				<td><input type="text" name="Correo" ></td>
          				<td width="100px"></td>
        			</tr>
        			<tr>
          				<td height="20px"></td>
        			</tr>
      			</table>		
     				<div class = "Botones">
     					<input class="btn" type="submit" name="boton" value="Consultar">
				    	<input class="btn" type="submit" name="boton" value="Crear" >
				    	<input class="btn" type="submit" name="boton" value="Actualizar" >
				    	<input class="btn" type="submit" name="boton" value="Borrar" >
				    	<input class="btn" type="submit" name="boton" value="Limpiar" >
    				</div>
			</form>
		</div> 
	</div>
</body>
</html>