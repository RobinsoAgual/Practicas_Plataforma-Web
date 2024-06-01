<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="com.productos.negocio.*"%>
<%@ page
	import="java.util.List, java.text.DecimalFormat, java.util.ArrayList, java.sql.SQLException"%>


<!DOCTYPE html>
<html>
<head>
    <title>NexTech Nexus</title>
    <link rel="shortcut icon" href="recursos/logo1.png">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h1 class="teta">Carrito</h1>
    
    <nav> 
        <a href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="catalogo.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catálogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="busqueda1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Búsqueda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="cerrarseccion.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cerrar Seccion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    </nav>

    <center>
        <a href="desarrollo.jsp"><img src="recursos/logo1.png" alt="Imagen de logo" style="width: 90px; height: 90px; margin-top: 100px;"></a>
    </center>
    
     <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
     
     
	<form name="listadoProductos" action="carrito.jsp">
		<%
		Producto1 producto = new Producto1();
		String tabla = producto.consultarProductos();
		out.print(tabla);
		%>
		<br>
		<div>
			<input class="boton" type="submit" name="button" id="button"
				value="Añadir" />
		</div>
	</form>
	<h2>Productos Seleccionados</h2>
	<ul>
		<%
		DecimalFormat df = new DecimalFormat("#.00");
		List<String> listaElementos = (List<String>) session.getAttribute("carrito");
		List<Integer> listacomp = new ArrayList<>();
		List<Double> precio = new ArrayList<>();
		List<String> ids = new ArrayList<>();
		if (listaElementos == null) {
			listaElementos = new ArrayList<String>();
			session.setAttribute("carrito", listaElementos);
		}

		String[] elementos = request.getParameterValues("productos");
		int i = 0;
		if (elementos != null) {
			while (i < elementos.length) {
				listaElementos.add(elementos[i]);
				i++;
			}
		}
		for (String tmp : listaElementos) {
			out.println("<li>" + tmp + "</li>");
		}
		listacomp = producto.suma(listaElementos); //devuelve productos elegidos lista
		precio = producto.precio(listacomp);

		ids = producto.elegidos(listaElementos);
		%>
	</ul>
	<main>
		<table class="factura">
			<tr>
				<th>Id Producto</th>
				<th>Precio total</th>
			</tr>
			<%
			for (int j = 0; j < ids.size(); j++) {
			%>
			<tr>
				<td><%=ids.get(j)%></td>
				<td><%=df.format(precio.get(j))%></td>
			</tr>
			<%
			}
			%>
		</table>
	</main>
	<div>
			<label>El valor Total de compra: <%=df.format(producto.precioTotal(precio))%>
				$
			</label>
		</div>
		<br>
		<div class="contenedor">
			<form action="borrarCarrito.jsp" method="post">
				<input class="boton" type="submit" value="Vaciar Carrito">
			</form>
		</div>
		
	<br>
	<br>
	 <footer>
        <a href="https://www.facebook.com/">
            <img src="recursos/facebook.png">
        </a>

        <a href="https://www.instagram.com/">
            <img src="recursos/instagram.png"> 
        </a>
        
       <a href="https://www.google.com/maps/d/u/0/embed?mid=1i_ztKbN5IOfa6u6dCvMTU9aEvKL8hiY&ehbc=2E312F">
            <img src="recursos/google.png">
        </a>
        <br>
        <a href="creador.jsp">VER MÁS SOBRE NOSOTROS</a>
        <hr>
    </footer>
    
    
</body>
</html>
