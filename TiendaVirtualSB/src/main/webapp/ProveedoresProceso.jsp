<%@ page contentType="text/html; charset=UTF-8"
    import="
        java.io.*,
        java.util.*,
        com.BO.TiendaVirtualSB.*,
        com.DTO.TiendaVirtualSB.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Proveedores proceso</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<%
long nitproveedor=0;
String ciudad_proveedor="";
String direccion_proveedor="";
String nombre_proveedor="";
String telefono_proveedor="";
ClienteController cc=new ClienteController();
ClienteVO cli=new ClienteVO();
String opcion=request.getParameter("boton");
try{
if(opcion.equals("Consultar")){
	nitproveedor=Long.parseLong(request.getParameter("NIT"));
	cli.setNitproveedor(nitproveedor);
	cli=cc.consultarproveedor(nitproveedor);
	ciudad_proveedor=cli.getCiudad_proveedor();
	direccion_proveedor=cli.getDireccion_proveedor();
	nombre_proveedor=cli.getNombre_proveedor();
	telefono_proveedor=cli.getTelefono_proveedor();
}
else if(opcion.equals("Crear")){
	long NIT=Long.parseLong(request.getParameter("NIT"));
	cli.setNitproveedor(NIT);
    cli.setCiudad_proveedor(request.getParameter("Ciudad"));
    cli.setDireccion_proveedor(request.getParameter("Direccion"));
    cli.setNombre_proveedor(request.getParameter("Nombre"));
    cli.setTelefono_proveedor(request.getParameter("Telefono"));
    cc.registrarproveedor(cli);
    request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
else if(opcion.equals("Actualizar")){
	nitproveedor=Long.parseLong(request.getParameter("NIT"));
	cli.setNitproveedor(nitproveedor); 
	cli.setCiudad_proveedor(request.getParameter("Ciudad"));
    cli.setDireccion_proveedor(request.getParameter("Direccion"));
    cli.setNombre_proveedor(request.getParameter("Nombre"));
    cli.setTelefono_proveedor(request.getParameter("Telefono"));
    cc.modificarproveedor(cli);
    request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
else if(opcion.equals("Borrar")){
	nitproveedor=Long.parseLong(request.getParameter("NIT"));
	cli.setNitproveedor(nitproveedor);
	cc.eliminarproveedor(cli);
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
else if(opcion.equals("Limpiar")){
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
}
catch(Exception e){
	request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
}
%>
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
			<form action="ProveedoresProceso.jsp" method="post"> 
				<table border="0">
        			<tr>
          				<td height="30px"></td>
        			</tr>
        			<tr>
          				<td>NIT:</td>
          				<td><input type="text" name="NIT" value="<%=nitproveedor%>"></td>
          				<td width="100px"></td>
          				<td>Teléfono:</td>
          				<td><input type="text" name="Telefono" value="<%=telefono_proveedor%>"></td>
          				<td width="100px"></td>
        			</tr>
        			<tr>
         				<td height="20px"></td>
        			</tr>
        			<tr>
				        <td>Nombre Proveedor:</td>
				        <td><input type="text" name="Nombre" value="<%=nombre_proveedor%>"></td>
				        <td width="100px"></td>
				        <td>Ciudad:</td>
				        <td><input type="text" name="Ciudad" value="<%=ciudad_proveedor%>"></td>
        			</tr>
        			<tr>
          				<td height="20px"></td>
        			</tr>
        			<tr>
          				<td>Dirección:</td>
          				<td><input type="text" name="Direccion" value="<%=direccion_proveedor%>"></td>
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
