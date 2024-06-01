<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*" import="com.productos.negocio.*"
	import="com.productos.negocio.Producto"%>
<html>
<title>NUEVO PRODUCTO</title>
<head>
   <link rel="shortcut icon" href="recursos/logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="recursos/Logo1.ico">
<h1 class="teta">NUEVO PRODUCTO</h1>

<center>
<nav>
</nav>
<br>
<br>
<br>
<hr>
</head>
<body>
 <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
<article>
	<form action="registro1.jsp" method="post">
	<p style="font-size:33px;">
		<table>
			<tr>
				<td>Id Producto</td>
				<td><input type="text" name="id" required="required"/></td>
			</tr>
			<tr>
				<td>Categoria:</td>
				<td>
					<%
						Producto producto = new Producto();
						out.print(producto.mostrarCategoria());
					%>
				</td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nombre" required/></td>
			</tr>
			<tr>
				<td>Cantidad:</td>
				<td><input type="text" name="cantidad" required/></td>
			</tr>
			<tr>
				<td>Precio:</td>
				<td><input type="text" name="precio" required/></td>
			</tr>
			<tr>
				<td>Imagen del Producto:</td>
				<td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">INGRESAR</button>
				</td>
			</tr>
		</table>
		<h3>*Campo obligatorio</h3>
	</form>
</article>
</body>
</html>