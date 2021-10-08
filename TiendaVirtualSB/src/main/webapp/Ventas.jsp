<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ventas</title>
<link href="Ventas.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
<header>
		<img alt="tienda" src="Tienda.jpg" width= 130 height = 125/>
    	<div class="menu">
	        <a href = "Usuarios.jsp">
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
			<form action="ProcesoVentas.jsp" method="post">
            <table border="0">
              <tr>
                <td>Cedula</td>
                <td><input type="text" name="" value=""></td>
                <td width="10px"></td>
                <td><input type="button" class="btnCons" name="" value="Consultar"></td>
                <td width="20px"></td>
                <td>Cliente</td>
                <td><input type="text" name="" value=""></td>
                <td width="20px"></td>
                <td>Consecutivo</td>
                <td><input type="text" name="" value=""></td>
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
                <td>Vlr. Unit</td>
                <td width="20px"></td>
                <td>Vlr. Total</td>
              </tr>
              <tr>
                <td><input type="text" name="" value=""></td>
                <td><input type="button" class="btnCons" name="" value="Consultar"></td>
                <td><input type="text" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text"  class="cantp" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text" name="" value=""></td>
              </tr>
              <tr>
                <td width="20px"></td>
              </tr>
              <tr>
                <td><input type="text" name="" value=""></td>
                <td><input type="button" class="btnCons" name="" value="Consultar"></td>
                <td><input type="text" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text"class="cantp" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text" name="" value=""></td>
              </tr>
              <tr>
                <td width="20px"></td>
              </tr>
              <tr>
                <td><input type="text" name="" value=""></td>
                <td><input type="button" class="btnCons" name="" value="Consultar"></td>
                <td><input type="text" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text" class="cantp" name="" value=""></td>
                <td width="20px"></td>
                <td><input type="text" name="" value=""></td>
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
                <td id="precio"><p>Total venta</p></td>
                <td width="20px"></td>
                <td><input type="text" name="" value=""></td>
              </tr>
              <tr>
                <td></td>
                <td></td>
                <td><input type="button"  class="btn" name="" value="Confirmar"></td>
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
              	<td><input type="button"  class="btnCons" name="" value="Calcular"></td>
              </tr>
            </table>
          </form>
      </div>
	 </div>
</body>
</html>

