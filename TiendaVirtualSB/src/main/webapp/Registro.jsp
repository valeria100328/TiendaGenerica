<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="Registro.css" rel="stylesheet" type = "text/css" />
</head>
<body>
 <div>
 
<h1>Bienvenidos a la Tienda Genérica</h1>

  <form action="Login.jsp" method="post">
   <table>
    <tr>
     <td>Usuario</td>
     <td><input type="text" name="usuario" /></td>
    </tr>
    <tr>
     <td>Contraseña</td>
     <td><input type="password" name="contrasena" /></td>
    </tr>

   </table>
   <div>
   	<input type = "submit" value = "Aceptar" />
	<input type = "submit" value = "Eliminar" />
   </div>

  </form>
 </div>
</body>
</html>
