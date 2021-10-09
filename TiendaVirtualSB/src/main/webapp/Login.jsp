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
<title>Login</title>
</head>
<body>
<%
	boolean validacion=true;
	ClienteController cc=new ClienteController();
	ClienteVO cli=new ClienteVO();
	cli.setUsuario(request.getParameter("usuario"));  
	cli.setContraseña(request.getParameter("contrasena"));
	validacion=cc.validate(cli);
	if(validacion==true){
		request.getRequestDispatcher("menu.jsp").forward(request, response);
	}
	else{
		request.getRequestDispatcher("Registro.jsp").forward(request, response);
	}
 %>	
</body>
