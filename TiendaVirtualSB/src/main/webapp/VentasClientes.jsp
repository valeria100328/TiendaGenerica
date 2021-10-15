<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="
        java.io.*,
        java.util.*,
        com.BO.TiendaVirtualSB.*,
        com.DAO.TiendaVirtualSB.*,
        com.DTO.TiendaVirtualSB.*"
%>
          <%
          ClienteController cc=new ClienteController();
          ClienteVO cli=new ClienteVO();
          cc.listaDeVentas();
          cc.total(cli);
         double total = cli.getTotal_todo();
         //if(total==0.0){
         	//request.getRequestDispatcher("menu.jsp").forward(request, response);
         //}
         %>
<!DOCTYPE html>
 <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registered Users</title>
    <link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script
        src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet"
        href="http://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css" />
    <link rel="stylesheet"
        href="http://code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
    <script>
        
    var saveme =  $.ajax({
        type: "POST",
        url: "http://localhost:8080/ListarVentas", //nombre del archivo php que consultaremos.
      
        success: function(data) {
          $.each(data, function(i, item) {
          lista = document.getElementById("myTable");
          var tr = document.createElement("tr");
          var columna1 = document.createElement("th")
          columna1.innerHTML = item.cedula_cliente;
          var columna2 = document.createElement("th")
          columna2.innerHTML = item.nombre_cliente;
          var columna3 = document.createElement("th")
          columna3.innerHTML = item.total_por_cliente;
			
        	
          lista.appendChild(tr);
          tr.appendChild(columna1);
          tr.appendChild(columna2);
          tr.appendChild(columna3);
          
          var total = document.createElement("p")

       
         });
        }
      });
    
    </script>

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
		<div class="formularioU" >
		 <h2>Total de Ventas por Cliente</h2>
        <table id="VentasCli">
            <tr>
              <th>Cédula</th>
              <th>Nombre</th>
              <th>Valor Total Ventas</th>
            </tr>
</thead>
<tbody id="myTable">
</tbody>
			<tr>
              <th></th>
              <th></th>
              <th></th>
              
              <th><p id="TotalVe">Total Ventas $: <%=total %></p></th>
            </tr>
</table>

 
        

    </div> 
	</div>
    </body>
    </html>
