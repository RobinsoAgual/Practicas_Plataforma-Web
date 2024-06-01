<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*"%>
    <html>
    <title>RESPUESTA</title>
<head>
	<link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
        MEN&Uacute;
    </h1>
    <nav>
    	<%

			String usuario;
			HttpSession sesion = request.getSession();
			 if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
			 {
		%>
			 	<jsp:forward page="login.jsp">
			 	<jsp:param name="error" value="Debe registrarse en el sistema."/>
			 	</jsp:forward>
		<% 
			 	
			 }else{
			 	
				 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
				 int perfil=(Integer)sesion.getAttribute("perfil");
		%>
		<%
				Pagina pag=new Pagina();
				String menu=pag.mostrarMenu(perfil);
				out.print(menu);
		%>
			<%
			}
		%>
    </nav>
    <center>
     
    <br><br><br><br><br>

</head>
</html>
