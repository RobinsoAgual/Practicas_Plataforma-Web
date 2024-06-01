<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.seguridad.*, com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Usuario</title>
</head>
<body>

    <% 
        // Procesar el formulario cuando se envíe
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            // Obtener parámetros del formulario
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            int idPerfil = Integer.parseInt(request.getParameter("cmbPerfil"));
            String clavePorDefecto = "654321"; // Clave por defecto según los requisitos

            // Crear una instancia de Usuario
            Usuario usuario = new Usuario();
            usuario.setNombre(nombre);
            usuario.setCorreo(correo);

            // Establecer el estado y la clave por defecto
            usuario.setEstado(1); // Puedes establecer el estado según tus necesidades
            usuario.setClave(clavePorDefecto);

            // Insertar el nuevo usuario en la base de datos
            String resultado = usuario.ingreso();

            // Mostrar el resultado
            out.println("<p>" + resultado + "</p>");
        }
    %>
</body>
</html>
