<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<title>Productos</title>
<link href="Estilos.css" rel="stylesheet" type = "text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="Proyecto de entrenamiento en desarrollo web" />
        <meta name="author" content="Ing. Diego Rodriguez" />
        <title>Insertar Usuario</title>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
            crossorigin="anonymous">
        </script>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    </head>
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

<main>
<body class="sb-nav-fixed sb-sidenav-toggled">
<div class = "contenedor">
		<div class="formularioU" >
        
            <form action="ProcesoProductos.jsp" method="post">
            	<div>
					<p>Nombre del archivo: &nbsp <i class="fas fa-upload"></i></p>
					<input id="archivo" type="file" class="upload-box" accept=".csv">
				</div>
				<div class = "Botones">
				    <button class="btn" type="button" onclick="subirArchivo()">Subir archivo</button>
		   		</div>
            </form>
        
	</div>
</div>
</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script>includeHTML();</script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script>
        function subirArchivo() {
            try {
                var csvFile = document.getElementById("archivo");
                var input = csvFile.files[0];
                var reader = new FileReader();
                reader.onload = function(e) {
                    var text = e.target.result;
                    var arrayLineas = text.split("\n");
                    var xhr = new XMLHttpRequest();
                    xhr.open("DELETE",
                            "http://localhost:8080/eliminartodoproducto", true);
                    xhr.send();

for (var i = 0; i < arrayLineas.length; i += 1) {
                        var arraydatos = arrayLineas[i].split(";");
                        if (arrayLineas[i] == "") {
                            continue;
                        }
                        for (var j = 0; j < arraydatos.length; j += 1) {
                            console.log(i + " " + j + "->" + arraydatos[j]);
                        }
                        var formData = new FormData();
                        formData.append("codigo_producto", arraydatos[0]);
                        formData.append("nombre_producto", arraydatos[1]);
                        formData.append("nitproveedor", arraydatos[2]);
                        formData.append("precio_compra", arraydatos[3]);   
                        formData.append("ivacompra", arraydatos[4]);
                        formData.append("precio_venta", arraydatos[5]);
                        var xhr = new XMLHttpRequest();
                        xhr.open("POST",
                                "http://localhost:8080/registrarproducto");
                        xhr.send(formData);
                       
                    }


                   var element = document.getElementById("error");
                    element.classList.add("visually-hidden");
                    var element2 = document.getElementById("correcto");
                    element2.classList.remove("visually-hidden");
                    document.getElementById("archivo").value = "";
                };
                reader.readAsText(input);
            } catch (error) {
                var element = document.getElementById("error");
                element.classList.remove("visually-hidden");
                var element2 = document.getElementById("correcto");
                element2.classList.add("visually-hidden");
                document.getElementById("archivo").value = "";
            }
            
        }
    </script>
 
 
</html>
