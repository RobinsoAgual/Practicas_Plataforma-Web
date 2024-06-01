<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*" import="com.productos.negocio.*"%>
<html>
<title>MODIFICAR</title>
<head>
<link rel="shortcut icon" href="recursos/Logo1.ico">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<h1 class="teta">MODIFICAR</h1>
<center>
	 <nav>
   
    </nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</head>


<body>
 <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
	<article>
	<% 
		int cod=Integer.parseInt(request.getParameter("cod"));
		Producto mp=new Producto();
		mp.ConsulEditarProductos(cod);
	%>
	<br>
	<br>
	<form action="EditarProductos.jsp" method="post">
	Codigo Producto: <input type="text" name="editarcod" value="<%=cod%>"/>
	<br>
	Categoria: <output><%=mp.getId_cat()%></output>
	<br>
	Nombre: <input type="text" name="editardesc" value="<%= mp.getNombre()%>"/>
	<br>
	Precio: <input type="text" name="editarprec" value="<%= mp.getPrecio_pr()%>"/>
	<br>
	Cantidad: <input type="text" name="editarcant" value="<%= mp.getCantidad_pr()%>"/>
	<br>
	<button type="submit" name="Actualizar">ACTUALIZAR</button>
	</form>
	
		
	</article>
</body>

</html>