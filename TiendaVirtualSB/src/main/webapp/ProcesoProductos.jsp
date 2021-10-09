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
<title>Proceso productos</title>
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
