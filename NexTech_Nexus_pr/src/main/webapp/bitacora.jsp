<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" session="true" %>

<!DOCTYPE html>
<html>
<head>
 <link rel="shortcut icon" href="recursos/logo1.ico">
 <link href="css/estilos.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>BITACORA</title>
</head>

<h1> NexTech Nexus</h1>
<h1> BITACORA</h1>


 <h2>Bienvenido, <%= session.getAttribute("usuario") %></h2> <!-- Aquí se muestra el nombre del usuario -->
<body>
   <h2> SESION:</h2>
<% 
HttpSession sesion = request.getSession(); 

out.println("IdSesion: " + sesion.getId()); 

%>
   <h2>  FECHA DE CREACIÓN DE LA SESION:</h2>
<%
out.println("Creación: " + sesion.getCreationTime());
Date momento = new Date(sesion.getCreationTime()); 
out.println("<BR>Creación: " + momento); 
%> 

<h2>  FECHA DEL ULTIMO ACCESO DEL USUARIO:</h2>
<% 
Date acceso=new Date(sesion.getLastAccessedTime()); 
out.println("Último acceso: "+acceso+"<br>"); 
%> 
<h2>  DURACION DE LA SECCION ACTUAL:</h2>
<% 
long longDuracion=sesion.getLastAccessedTime(); 
Date duracion=new Date(longDuracion); 
out.println("Duracion:"+duracion.getMinutes()+"min."+duracion.getSeconds()+"seg"); 
%>

<h2>  VERIFICAR SI LA SECCION ES NUEVA O ANTERIOR:</h2>
<% 
out.println("nueva: "+sesion.isNew()); 
%>
</body>
</html>
