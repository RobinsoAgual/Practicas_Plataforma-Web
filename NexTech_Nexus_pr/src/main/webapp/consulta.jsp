<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.productos.negocio.*" %>
<html>
    <title>RESPUESTA</title>
<head>
	<link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
     <link href="css/style.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
   
        CONSULTA
          </h1>
    <center>
    <nav>
        <a href="index.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="busqueda.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B&uacute;squeda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="login.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="catalogo.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cat&aacute;logo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
    </nav>  
    <br><br><br><br><br>

</head>
<body>
  <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
 <br>
 
 
 <h2c style="font-size:35px; font-family:courier new">
<%Producto producto=new Producto();
String tabla=producto.consultarTodo();
out.print(tabla);%>
</h2c>
 <br>
</body>	
</html>