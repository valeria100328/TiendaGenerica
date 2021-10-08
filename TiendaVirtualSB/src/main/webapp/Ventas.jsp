<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ventas</title>
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
	<div class="formularioU">
	<form action="ProcesoVentas.jsp" method="post">
      <table border="0">
        <tr>
          <td>Cedula</td>
          <td><input type="text" name="Cedula" value=""></td>
          <td width="10px"></td>
          <td><input class="btnCons" type="submit" name="boton" value="Consultar" ></td>
          <td width="20px"></td>
          <td>Cliente</td>
          <td><input type="text" name="Cliente" value="" disabled></td>
          <td width="20px"></td>
          <td>Consecutivo</td>
          <td><input type="text" name="Consecutivo" value="" disabled></td>
        </tr>
        <tr>
          <td height="20px"></td>
        </tr>
      </table>
      <table>
        <tr>
          <td >Cod. Producto</td>
          <td width="100px"></td>
          <td >Nombre Producto</td>
          <td width="20px"></td>
          <td >Cant</td>
          <td width="20px"></td>
          <td >Vlr. Unitario</td>
          <td width="20px"></td>
          <td >Vlr. Total</td>
        </tr>
        <tr>
          <td><input type="text" name="codigop1" value=""></td>
          <td><input class="btnCons" type="submit" name="boton" value="Buscar producto  1" style="width:135px"></td>
          <td><input type="text" name="nomp1" value=""></td>
          <td width="20px"></td>
          <td align="center"><input type="text" name="" value=""  style="width : 30px"></td>
          <td width="20px"></td>
          <td><input type="text" name="valoru1" value=""></td>
          <td width="20px"></td>
          <td><input type="text" name="" value=""></td>
        </tr>
        <tr>
          <td width="20px"></td>
        </tr>
        <tr>
          <td><input type="text" name="codigop2" value=""></td>
          <td><input class="btnCons" type="submit" name="boton" value="Buscar producto  2" style="width:135px"  ></td>
          <td><input type="text" name="nomp2" value=""></td>
          <td width="20px"></td>
          <td align="center"><input type="text" name="" value=""  style="width : 30px"></td>
          <td width="20px"></td>
          <td><input type="text" name="valoru2" value=""></td>
          <td width="20px"></td>
          <td><input type="text" name="" value=""></td>
        </tr>
        <tr>
          <td width="20px"></td>
        </tr>
        <tr>
          <td><input type="text" name="codigop3" value=""></td>
          <td><input class="btnCons" type="submit" name="boton" value="Buscar producto  3" style="width:135px"></td>
          <td><input type="text" name="nomp3" value=""></td>
          <td width="20px"></td>
          <td align="center"><input type="text" name="" value=""  style="width : 30px"></td>
          <td width="20px"></td>
          <td><input type="text" name="valoru3" value=""></td>
          <td width="20px"></td>
          <td><input type="text" name="" value=""></td>
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
          <td><input type="text" name="" value=""></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td><input type="submit" class="btnCons" name="boton" value="Confirmar"></td>
          <td></td>
          <td></td>
          <td width="20px"></td>
          <td id="precio">Total IVA</td>
          <td width="20px"></td>
          <td><input type="text" name="" value=""></td>
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
          <td><input type="text" name="" value=""></td>
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
