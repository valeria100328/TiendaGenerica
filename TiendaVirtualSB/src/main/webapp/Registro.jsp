<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tienda Genérica</title>
<link href="Registro.css" rel="stylesheet" type = "text/css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<div class = "contenedor">
<div class="table1">
<form action="Login.jsp" method="post">
    <table cellpadding = "12">
        <tr class = "Nombre">
            <td colspan=2><strong> Bienvenidos a la Tienda Genérica</strong></td>
        </tr>
        <tr>
            <td>Usuario:</td>
            <td><input type="text" name = "usuario"/></td>
        </tr>
        <tr>
            <td>Contraseña:</td>
            <td><input type="password" name = "contrasena"/></td>
        </tr>
     </table> 
     <div class = "Botones">
    	<button class="button"><strong>Aceptar</strong></button>
        <button class="button"><strong>Eliminar</strong></button>
    </div>
</form>
</div>

 </div>
</body>
</html>
