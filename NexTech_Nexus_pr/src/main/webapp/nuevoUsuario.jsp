<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.seguridad.*" import="com.productos.negocio.*"
	import="com.productos.negocio.Producto"%>
<!DOCTYPE html>
<html>
<head>
    <title>Usuarios nuevos</title>
    <link rel="shortcut icon" href="recursos/logo1.png">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">



 <h1 class="teta">Nuevo Usuario</h1>
  <center>
 <nav> 
        <a href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="catalogo.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catálogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="busqueda1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Búsqueda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CERRAR SECCION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        
          </a>
    </nav>
    <br><br>
        <hr>
    </head>    
<body>
   <div>
    <br>
     <br>
  <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
  <form action="registrousuario.jsp" method="post">
  
      Nombre:
            <input type="text" name="nombre" maxlength="10" style="margin-left:50px;margin-top:10px; height:25px; width:270px" required>
            
            <br>
       Correo Electronico:<input type="text" name="correo" style="margin-left:20px;margin-top:10px; height:25px; width:270px" required/>
            <br>
            <br>
        <br>
    <label for="tipoPerfil">Tipo de Perfil:</label><br>
        <br>
 <%
						Usuario usu = new Usuario();
						out.print(usu.mostrarPerfiles());
					%>
    </td>
			</tr>
			<tr>
    <input type="hidden" id="clave" name="clave" value="654321">
    
    <input type="submit" value="Enviar">
        <br>
            <br>
    <h3>*Campo obligatorio</h3>
</form>
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
