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
<title>Insert title here</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
<%

ClienteController cc=new ClienteController();
ClienteVO cli=new ClienteVO();
File archivo = new File( request.getParameter("Examinar"));
cli.setArchivo(archivo.getAbsolutePath());
cc.EnlistarProductos(cli);
request.getRequestDispatcher("Productos.jsp").forward(request, response);
%>
</body>
</html>
