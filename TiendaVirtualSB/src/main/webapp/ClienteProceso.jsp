<%@ page
    import="
        java.io.*,
        java.util.*,
        com.BO.TiendaVirtualSB.*,
        com.DTO.TiendaVirtualSB.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clientes</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<%
int cedula_cliente=0;
String nombre_cliente="";
String email_cliente="";
String direccion_cliente="";
String telefono="";
ClienteController cc=new ClienteController();
ClienteVO cli=new ClienteVO();
String opcion=request.getParameter("boton");
try{
if(opcion.equals("Consultar")){
	cedula_cliente=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_cliente(cedula_cliente);
	cli=cc.consultarcliente(cedula_cliente);
	nombre_cliente=cli.getNombre_cliente();
	email_cliente=cli.getEmail_cliente();
	direccion_cliente=cli.getDireccion_cliente();
	telefono=cli.getTelefono_cliente();
}
else if(opcion.equals("Crear")){
	int cedula=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_cliente(cedula); 
    cli.setEmail_cliente(request.getParameter("Correo"));
    cli.setNombre_cliente(request.getParameter("Nombre"));
    cli.setDireccion_cliente(request.getParameter("Direccion"));
    cli.setTelefono_cliente(request.getParameter("Telefono"));
    cc.registrarcliente(cli);
    request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
else if(opcion.equals("Actualizar")){
	cedula_cliente=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_cliente(cedula_cliente); 
	cli.setEmail_cliente(request.getParameter("Correo"));
    cli.setNombre_cliente(request.getParameter("Nombre"));
    cli.setDireccion_cliente(request.getParameter("Direccion"));
    cli.setTelefono_cliente(request.getParameter("Telefono"));
    cc.modificarcliente(cli);
    request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
else if(opcion.equals("Borrar")){
	cedula_cliente=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_cliente(cedula_cliente); 
	cc.eliminarcliente(cli);
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
else if(opcion.equals("Limpiar")){
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
}
}
catch(Exception e){
	request.getRequestDispatcher("Clientes.jsp").forward(request, response);
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
			<form action="ClienteProceso.jsp" method="post"> 
				<table border="0">
        			<tr>
          				<td height="30px"></td>
        			</tr>
        			<tr>
          				<td>Cédula:</td>
          				<td><input type="text" name="Cedula" value="<%=cedula_cliente%>"></td>
          				<td width="100px"></td>
          				<td>Teléfono:</td>
          				<td><input type="text" name="Telefono" value="<%=telefono%>"></td>
          				<td width="100px"></td>
        			</tr>
        			<tr>
         				<td height="20px"></td>
        			</tr>
        			<tr>
				        <td>Nombre Completo:</td>
				        <td><input type="text" name="Nombre" value="<%=nombre_cliente%>"></td>
				        <td width="100px"></td>
				        <td>Correo Electrónico:</td>
				        <td><input type="text" name="Correo" value="<%=email_cliente%>"></td>
        			</tr>
        			<tr>
          				<td height="20px"></td>
        			</tr>
        			<tr>
          				<td>Dirección:</td>
          				<td><input type="text" name="Direccion" value="<%=direccion_cliente%>"></td>
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
