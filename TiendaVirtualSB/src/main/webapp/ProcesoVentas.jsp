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
<title>Proceso Ventas</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<%
int cod1=0;
int cod2=0;
int cod3=0;
ClienteController cc=new ClienteController();
ClienteVO cli=new ClienteVO();
String opcion=request.getParameter("boton");
int cedula_cliente=0;
String nombre_cliente="";
int consecutivo=0;
int codigo_producto1=0;
String nombre_producto1="";
double precio_unitario1 = 0;
int codigo_producto2=0;
String nombre_producto2="";
double precio_unitario2 = 0;
int codigo_producto3=0;
String nombre_producto3="";
double precio_unitario3= 0;
int cantidad1=0;
int cantidad2=0;
int cantidad3=0;
double iva=0;
double total1=0;
double total2=0;
double total3=0;
double TOTAL=0;
double TOTALIVA=0;
try{
 cedula_cliente=Integer.parseInt(request.getParameter("Cedula"));
 nombre_cliente=request.getParameter("Cliente");
 consecutivo=Integer.parseInt(request.getParameter("Consecutivo"));
}
catch(Exception e){}
try{
cod1=Integer.parseInt(request.getParameter("codigop1"));
nombre_producto1=request.getParameter("nomp1");
precio_unitario1=Double.parseDouble(request.getParameter("valoru1"));
}
catch(Exception e){}
try{
	 cod2=Integer.parseInt(request.getParameter("codigop2"));
	 nombre_producto2=request.getParameter("nomp2");
	 precio_unitario2=Double.parseDouble(request.getParameter("valoru2"));
}
catch(Exception e){}
try{
	 cod3=Integer.parseInt(request.getParameter("codigop3"));
	 nombre_producto3=request.getParameter("nomp3");
	 precio_unitario3=Double.parseDouble(request.getParameter("valoru3"));
}
catch(Exception e){}
try{
	 cantidad1=Integer.parseInt(request.getParameter("cantidad1"));
	 cantidad2=Integer.parseInt(request.getParameter("cantidad2"));
	 cantidad3=Integer.parseInt(request.getParameter("cantidad3"));
}
catch(Exception e){}
try{
	total1=Double.parseDouble(request.getParameter("total1"));
	total2=Double.parseDouble(request.getParameter("total2"));
	total3=Double.parseDouble(request.getParameter("total3"));
}
catch(Exception e){}
try{
	iva=Double.parseDouble(request.getParameter("iva"));
	TOTAL=Double.parseDouble(request.getParameter("total"));
	TOTALIVA=Double.parseDouble(request.getParameter("TOTALIVA"));
}
catch(Exception e){}

try{
if(opcion.equals("Consultar")){
	try{
	cedula_cliente=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_cliente(cedula_cliente);
	cli=cc.consultarcliente(cedula_cliente);
 	nombre_cliente=cli.getNombre_cliente();
 	cli=cc.ConsultarClienteVenta(cedula_cliente);
 	consecutivo=cli.getCodigo_venta();
	}
	catch(Exception e){
		request.getRequestDispatcher("Ventas.jsp").forward(request, response);
	}
}
else if(opcion.equals("Buscar producto  1")){
	codigo_producto1=Integer.parseInt(request.getParameter("codigop1"));
	cod1=codigo_producto1;
	cli.setCodigo_producto(codigo_producto1);
	cli=cc.consultarproducto(codigo_producto1);
	codigo_producto1=cli.getCodigo_producto();
	nombre_producto1=cli.getNombre_producto();
	precio_unitario1=cli.getPrecio_venta();
}
else if(opcion.equals("Buscar producto  2")){
	codigo_producto2=Integer.parseInt(request.getParameter("codigop2"));
	cod2=codigo_producto2;
	cli.setCodigo_producto(codigo_producto2);
	cli=cc.consultarproducto(codigo_producto2);
	codigo_producto2=cli.getCodigo_producto();
	nombre_producto2=cli.getNombre_producto();
	precio_unitario2=cli.getPrecio_venta();
	}
else if(opcion.equals("Buscar producto  3")){
	codigo_producto3=Integer.parseInt(request.getParameter("codigop3"));
	cod3=codigo_producto3;
	cli.setCodigo_producto(codigo_producto3);
	cli=cc.consultarproducto(codigo_producto3);
	codigo_producto3=cli.getCodigo_producto();
	nombre_producto3=cli.getNombre_producto();
	precio_unitario3=cli.getPrecio_venta();
}
else if(opcion.equals("Calcular")){
	if(Integer.parseInt(request.getParameter("codigop1"))!=0){
		cantidad1=Integer.parseInt(request.getParameter("cantidad1"));
		precio_unitario1=Double.parseDouble(request.getParameter("valoru1"));
		total1=(cantidad1*precio_unitario1);
	}
	else{
		cantidad1=0;
		precio_unitario1=0;
		total1=0;
	}
	if(Integer.parseInt(request.getParameter("codigop2"))!=0){
		cantidad2=Integer.parseInt(request.getParameter("cantidad2"));
		precio_unitario2=Double.parseDouble(request.getParameter("valoru2"));
		total2=(cantidad2*precio_unitario2);
	}
	else{
		cantidad2=0;
		precio_unitario2=0;
		total2=0;
	}
	if(Integer.parseInt(request.getParameter("codigop3"))!=0){
		cantidad3=Integer.parseInt(request.getParameter("cantidad3"));
		precio_unitario3=Double.parseDouble(request.getParameter("valoru3"));
		total3=(cantidad3*precio_unitario3);
    }
	else{
		cantidad3=0;
		precio_unitario3=0;
		total3=0;
	}
	TOTAL=total1+total2+total3;
	iva=TOTAL*0.19;
	TOTALIVA=TOTAL+iva;
}
else if(opcion.equals("Confirmar")){
	cedula_cliente=Integer.parseInt(request.getParameter("Cedula"));
	cli.setCedula_cliente(cedula_cliente);
	cli.setTotal_venta(Double.parseDouble(request.getParameter("total")));	
	cli.setValor_venta(Double.parseDouble(request.getParameter("TOTALIVA")));
	cli.setCodigo_venta(Integer.parseInt(request.getParameter("Consecutivo")));
	cc.confirmarventa(cli);
	if(Integer.parseInt(request.getParameter("codigop1"))!=0){
		cli.setCantidad_producto(Integer.parseInt(request.getParameter("cantidad1")));
		cli.setCodigo_producto(Integer.parseInt(request.getParameter("codigop1")));
		cli.setCodigo_venta(Integer.parseInt(request.getParameter("Consecutivo")));
		cli.setValor_total_prod(Double.parseDouble(request.getParameter("total1")));
		cli.setValor_venta_prod(Double.parseDouble(request.getParameter("total1"))+(Double.parseDouble(request.getParameter("total1"))*0.19));
		cli.setValoriva_prod(Double.parseDouble(request.getParameter("total1"))*0.19);
		cc.Creardetalle(cli);
	}
	else{
	}
	if(Integer.parseInt(request.getParameter("codigop2"))!=0){
		cli.setCantidad_producto(Integer.parseInt(request.getParameter("cantidad2")));
		cli.setCodigo_producto(Integer.parseInt(request.getParameter("codigop2")));
		cli.setCodigo_venta(Integer.parseInt(request.getParameter("Consecutivo")));
		cli.setValor_total_prod(Double.parseDouble(request.getParameter("total2")));
		cli.setValor_venta_prod(Double.parseDouble(request.getParameter("total2"))+(Double.parseDouble(request.getParameter("total2"))*0.19));
		cli.setValoriva_prod(Double.parseDouble(request.getParameter("total2"))*0.19);
		cc.Creardetalle(cli);
	}
	else{
	}
	if(Integer.parseInt(request.getParameter("codigop3"))!=0){
		cli.setCantidad_producto(Integer.parseInt(request.getParameter("cantidad3")));
		cli.setCodigo_producto(Integer.parseInt(request.getParameter("codigop3")));
		cli.setCodigo_venta(Integer.parseInt(request.getParameter("Consecutivo")));
		cli.setValor_total_prod(Double.parseDouble(request.getParameter("total3")));
		cli.setValor_venta_prod(Double.parseDouble(request.getParameter("total3"))+(Double.parseDouble(request.getParameter("total3"))*0.19));
		cli.setValoriva_prod(Double.parseDouble(request.getParameter("total3"))*0.19);
		cc.Creardetalle(cli);
	}
	else{
	}
	request.getRequestDispatcher("Ventas.jsp").forward(request, response);

}

}
catch(Exception e){
	
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
	<div class="formularioU">
	<form action="ProcesoVentas.jsp" method="post">
      <table border="0">
        <tr>
          <td>Cedula</td>
          <td><input type="text" name="Cedula" value="<%=cedula_cliente%>"></td>
          <td width="10px"></td>
          <td><input class="btnCons" type="submit" name="boton" value="Consultar"></td>
          <td width="20px"></td>
          <td>Cliente</td>
          <td><input type="text" name="Cliente" value="<%=nombre_cliente%>" ></td>
          <td width="20px"></td>
          <td>Consecutivo</td>
          <td><input type="text" name="Consecutivo" value="<%=consecutivo%>" ></td>
        </tr>
        <tr>
          <td height="20px"></td>
        </tr>
      </table>
       <table>
        <tr>
          <td>Cod. Producto</td>
          <td width="100px"></td>
          <td>Nombre Producto</td>
          <td width="20px"></td>
          <td>Cant</td>
          <td width="20px"></td>
          <td>Vlr. Unitario</td>
          <td width="20px"></td>
          <td>Vlr. Total</td>
        </tr>
        <tr>
          <td><input type="text" name="codigop1" value="<%=cod1%>"></td>
          <td><input class="btnCons" type="submit" name="boton" value="Buscar producto  1" ></td>
          <td><input type="text" name="nomp1" value="<%=nombre_producto1%>"></td>
          <td width="20px"></td>
          <td align="center"><input type="text" name="cantidad1" value="<%=cantidad1%>"  style="width : 30px"></td>
          <td width="20px"></td>
          <td><input type="text" name="valoru1" value="<%=precio_unitario1%>"></td>
          <td width="20px"></td>
          <td><input type="text" name="total1" value="<%=total1 %>"></td>
        </tr>
        <tr>
          <td width="20px"></td>
        </tr>
        <tr>
          <td><input type="text" name="codigop2" value="<%=cod2%>"></td>
          <td><input class="btnCons" type="submit" name="boton" value="Buscar producto  2" ></td>
          <td><input type="text" name="nomp2" value="<%=nombre_producto2%>"></td>
          <td width="20px"></td>
          <td align="center"><input type="text" name="cantidad2" value="<%=cantidad2%>"  style="width : 30px"></td>
          <td width="20px"></td>
          <td><input type="text" name="valoru2" value="<%=precio_unitario2%>"></td>
          <td width="20px"></td>
          <td><input type="text" name="total2" value="<%=total2 %>"></td>
        </tr>
        <tr>
          <td width="20px"></td>
        </tr>
        <tr>
          <td><input type="text" name="codigop3" value="<%=cod3%>"></td>
          <td><input class="btnCons" type="submit" name="boton" value="Buscar producto  3"></td>
          <td><input type="text" name="nomp3" value="<%=nombre_producto3%>"></td>
          <td width="20px"></td>
          <td align="center"><input type="text" name="cantidad3" value="<%=cantidad3%>"  style="width : 30px"></td>
          <td width="20px"></td>
          <td><input type="text" name="valoru3" value="<%=precio_unitario3%>"></td>
          <td width="20px"></td>
          <td><input type="text" name="total3" value="<%=total3 %>"></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td width="20px"></td>
          <td id="precio">Total venta</td>
          <td width="20px"></td>
          <td><input type="text" name="total" value="<%=TOTAL %>"></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td><input type="submit" class="btnCons" name="boton" value="Confirmar"></td>
          <td></td>
          <td></td>
          <td width="20px"></td>
          <td align="right">Total IVA</td>
          <td width="20px"></td>
          <td><input type="text" name="iva" value="<%=iva %>"></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td width="20px"></td>
          <td id="precio">Total con IVA</td>
          <td width="20px"></td>
          <td><input type="text" name="TOTALIVA" value="<%=TOTALIVA %>"></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td width="20px"></td>
       	<td><input type="submit" class="btnCons" name="boton" value="Calcular" ></td>
         </tr>
      </table>
      </form>
      </div>
	 </div>
</body>
</html>
