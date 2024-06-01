<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.productos.seguridad.Usuario, com.productos.datos.Conexion" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
        LOGIN
    </h1>
    <center>
   <nav> 
        <a href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="catalogo.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catálogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <a href="busqueda1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Búsqueda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
       
    </nav>
    <br><br>
        <hr>
        

</head>

<body>

<br><br><br>
<h2>Iniciar Sesión</h2>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String nombre_us = request.getParameter("nombre_us");
        String contraseña = request.getParameter("contraseña");

        Conexion conexion = new Conexion();
        Usuario usuario = new Usuario();
        usuario.setConexion(conexion);

        boolean usuarioValido = usuario.verificarUsuario(nombre_us, contraseña);

        if (usuarioValido) {
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("usuario", usuario.getNombre());
            httpSession.setAttribute("perfil", usuario.getPerfil());

            switch (usuario.getPerfil()) {
                case 1:
                    response.sendRedirect("menu_Administrador.jsp");
                    break;
                case 2:
                    response.sendRedirect("menu_vendedor.jsp");
                    break;
                case 3:
                    response.sendRedirect("menu_Cliente.jsp");
                    break;
                default:
                    out.println("<p style='color: red;'>Perfil no reconocido.</p>");
                    break;
            }
            return;
        } else {
            out.println("<p style='color: red;'>Credenciales incorrectas. Por favor, inténtalo de nuevo.</p>");
        }
    }
%>

<form action="login.jsp" method="post">
    <label for="nombre_us">Nombre de Usuario:</label>
    <input type="text" id="nombre_us" name="nombre_us" required><br><br>

    <label for="contraseña">Contraseña:</label>
    <input type="password" id="contraseña" name="contraseña" required><br><br>

    <input type="submit" value="Iniciar Sesión">
</form>

<p>¿No tienes una cuenta? <a href="registrar.jsp">Regístrate aquí</a>.</p>

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
