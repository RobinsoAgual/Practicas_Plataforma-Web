<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.productos.negocio.*" %>
<!DOCTYPE html>
<html>
    <title>BUSQUEDA POR CATEGORIA</title>
<head>
    <link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
       BÚSQUEDA POR CATEGORÍA
    </h1>
    <center>
    <nav>
        <a href="index.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="busqueda.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Búsqueda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="login.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="catalogo.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catálogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
    </nav>  
    <br><br><br><br><br>
</head>
<body>
 
  <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
<p>
<center>
<form action="categoria.jsp" method="post">
        
        <p style="font-size:33px;">
        <center>
            Búsqueda mediante categoría
            
            <% 
            Producto producto = new Producto();
            String combo = producto.mostrarCategoria();
            out.print(combo);
            %>
            <button type="submit" >ENVIAR</button>
        </center>
        </p>
            
</form>

<%
    // Obtener el parámetro "bcategoria" del formulario enviado
    String bcategoriaParam = request.getParameter("cmbCategoria");
    
    // Verificar si el parámetro no es nulo
    if (bcategoriaParam != null) {
        // Convertir el valor del parámetro a entero
        int cat = Integer.parseInt(bcategoriaParam);
        
        // Instanciar una cadena vacía para almacenar la tabla de productos
        String tabla = "";
        
        // Realizar la consulta de productos según la categoría seleccionada
        tabla = producto.consultarcategoria(cat);
        
        // Verificar si se obtuvieron resultados de la consulta
        if (!tabla.isEmpty()) {
            // Mostrar la tabla de productos
            out.print(tabla);
        } else {
            // Mostrar un mensaje indicando que no hay productos disponibles para la categoría seleccionada
            out.print("<p>No hay productos disponibles para esta categoría.</p>");
        }
    }
%>

</p>

</body>    
</html>
