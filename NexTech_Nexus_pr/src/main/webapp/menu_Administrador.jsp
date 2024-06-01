<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NexTech Nexus</title>
    <link rel="shortcut icon" href="recursos/logo1.png">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>

<body>
    <h1 class="teta">NexTech Nexus</h1>
    
    <nav> 
        <a href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="catalogo.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catálogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="busqueda1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Búsqueda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
         <a href="cerrarseccion.jsp">Cerrar Sesion</a>
    
    </nav>
<center>
        <a href="desarrollo.jsp"><img src="recursos/logo1.png" alt="Imagen de logo" style="width: 90px; height: 90px; margin-top: 100px;"></a>
    </center>
    
		<h1>Menu Administrador</h1>
		 <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->

   <ul>
        <li><a href="nuevoUsuario.jsp">Ingresar nuevos Usuarios</a></li>
              <li><a href="bitacora.jsp">Bitacora</a></li>
      </ul>
      
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