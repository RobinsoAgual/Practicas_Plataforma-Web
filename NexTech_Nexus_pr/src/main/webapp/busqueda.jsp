<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*" session="true"%>
<html>
<title>Búsqueda</title>
<head>
    <link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">Búsqueda</h1>
    <center>
        <nav>
            <a href="index.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a> <a
                    href="catalogo.jsp">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Catálogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </a> <a href="login.jsp">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </a>
        </nav>
        <br>
        <br>
        <br>
        <hr>
    </head>


    <body>
        <article>
            <form action="categoria.jsp" method="post">
        
                <p style="font-size:33px;">
                    <center>
                        Búsqueda mediante categoría
                        
                        <% Producto producto=new Producto();
                           String combo=producto.mostrarCategoria();
                           out.print(combo);
                        %>
                        <button type="submit">ENVIAR</button>
                    </center>
                </p>
            
            </form>
        </article>
    </body>

</html>
