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
<title>Usuario proceso</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<%
int cedula_usuario=0;
String nombre_usuario="";
String email_usuario="";
String usuario="";
String password="";
ClienteController cc=new ClienteController();
ClienteVO cli=new ClienteVO();
String opcion=request.getParameter("boton");
try{
if(opcion.equals("Consultar")){
	cedula_usuario=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_usuario(cedula_usuario);
	cli=cc.consultarusuario(cedula_usuario);
	nombre_usuario=cli.getNombre_usuario();
	email_usuario=cli.getEmail_usuario();
	usuario=cli.getUsuario();
	password=cli.getContraseña();
}
else if(opcion.equals("Crear")){
	int cedula=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_usuario(cedula); 
    cli.setEmail_usuario(request.getParameter("Correo"));
    cli.setNombre_usuario(request.getParameter("Nombre"));
    cli.setUsuario(request.getParameter("Usuario"));
    cli.setContraseña(request.getParameter("Contrasena"));
    cc.registrarPersona(cli);
    request.getRequestDispatcher("Usuario.jsp").forward(request, response);
}
else if(opcion.equals("Actualizar")){
	cedula_usuario=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_usuario(cedula_usuario); 
    cli.setEmail_usuario(request.getParameter("Correo"));
    cli.setNombre_usuario(request.getParameter("Nombre"));
    cli.setUsuario(request.getParameter("Usuario"));
    cli.setContraseña(request.getParameter("Contrasena"));
    cc.modificarUsuario(cli);
    request.getRequestDispatcher("Usuario.jsp").forward(request, response);
}
else if(opcion.equals("Borrar")){
	cedula_usuario=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_usuario(cedula_usuario); 
	cc.eliminarUsuario(cli);
	request.getRequestDispatcher("Usuario.jsp").forward(request, response);
	}
else if(opcion.equals("Limpiar")){
	request.getRequestDispatcher("Usuario.jsp").forward(request, response);
}
}
catch(Exception e){
	request.getRequestDispatcher("Usuario.jsp").forward(request, response);
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
			<form action="UsuarioProceso.jsp" method="post"> 
        		<table border="0">
        			<tr>
          				<td height="30px"></td>
        			</tr>
        			<tr>
          				<td>Cédula:</td>
          				<td><input type="text" name="Cedula" value="<%=cedula_usuario%>"></td>
          				<td width="100px"></td>
          				<td>Usuario:</td>
          				<td><input type="text" name="Usuario" value="<%=usuario%>"></td>
          				<td width="100px"></td>
        			</tr>
        			<tr>
         				<td height="20px"></td>
        			</tr>
        			<tr>
				        <td>Nombre Completo:</td>
				        <td><input type="text" name="Nombre" value="<%=nombre_usuario%>"></td>
				        <td width="100px"></td>
				        <td>Contraseña:</td>
				        <td><input type="password" name="Contrasena" value="<%=password%>"></td>
        			</tr>
        			<tr>
          				<td height="20px"></td>
        			</tr>
        			<tr>
          				<td>Correo electrónico:</td>
          				<td><input type="text" name="Correo" value="<%=email_usuario%>"></td>
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
