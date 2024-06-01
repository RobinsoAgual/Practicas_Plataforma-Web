<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="com.productos.negocio.*" %>
<html>
    <title>RESPUESTA</title>
<head>
	<link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
        INFORMACI&Oacute;N
    </h1>
    <center>
    <nav>
        <a href="index.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="busqueda.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B&uacute;squeda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="login1.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="catalogo.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cat&aacute;logo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
    </nav>  
    <br><br><br><br><br>

</head>
<body>
 
<p>
<article style="text-align:left;font-size:25px;font-family:times new roman">
    <%
    String nombre=request.getParameter("nombre");
    String apellido=request.getParameter("apellido");
    String fecha_nacimiento=request.getParameter("fecha_nacimiento");
    String ecivil=request.getParameter("ecivil");
    String cedula=request.getParameter("cedula");
    String clave=request.getParameter("clave");
    String residencia=request.getParameter("residencia");
    String color=request.getParameter("colorfavorito");
    String aux=cedula.substring(0, 2);
    
    String aux1="";
    
    if(aux.equals("01")){
    	aux1="Azuay";
    }if(aux.equals("02")){
    	aux1="Bolívar";
    }if(aux.equals("03")){
    	aux1="Cañar";
    }if(aux.equals("04")){
    	aux1="Carchi";
    }if(aux.equals("05")){
    	aux1="Cotopaxi";
    }if(aux.equals("06")){
    	aux1="Chimborazo";
    }if(aux.equals("07")){
    	aux1="El Oro";
    }if(aux.equals("08")){
    	aux1="Esmeraldas";
    }if(aux.equals("09")){
    	aux1="Guayas";
    }if(aux.equals("10")){
    	aux1="Imbabura";
    }if(aux.equals("11")){
    	aux1="Loja";
    }if(aux.equals("12")){
    	aux1="Los Rios";
    }if(aux.equals("13")){
    	aux1="Manabí";
    }if(aux.equals("14")){
    	aux1="Morona Santiago";
    }if(aux.equals("15")){
    	aux1="Napo";
    }if(aux.equals("16")){
    	aux1="Pastaza";
    }if(aux.equals("17")){
    	aux1="Pichincha";
    }if(aux.equals("18")){
    	aux1="Tungurahua";
    }if(aux.equals("19")){
    	aux1="Zamora Chinchipe";
    }if(aux.equals("20")){
    	aux1="Galápagos";
    }if(aux.equals("21")){
    	aux1="Sucumbios";
    }if(aux.equals("22")){
    	aux1="Orellana";
    }if(aux.equals("23")){
    	aux1="Santo Domingo de los Tsáchilas";
    }if(aux.equals("24")){
    	aux1="Santa Elena";
    }if(aux.equals("30")){
    	aux1="Número reservado para ecuatorianos registrados en el exterior.";
    }
    %>

    <%=fecha_nacimiento%>
    <br>
    <b>Nombre:</b> <%=nombre%>
    <br>
    <b>Apellido:</b> <%=apellido%>
    <br>
   <b> C&eacute;dula:</b> <%=cedula%>
    <br>
   <b> Estado civil:</b> <%=ecivil %>
    <br>
   <b> Clave:</b> <%=clave%>
    <br>
   <b> Lugar de residencia:</b> <%=residencia%>
    <br>
	<b>Provincia:</b> <%=aux1%>
	<br>
	<b><font color=<%=color%>>Color Favorito de <%=nombre%></font></b>
	</article>
	<p id="resultado">
</p>
<script>  
function calcularEdad() {
  var fechaNacimiento = new Date();
  fechaNacimiento.setFullYear(parseInt(<%=request.getParameter("fecha_nacimiento").substring(0,4)%>)
		  ,parseInt(<%=request.getParameter("fecha_nacimiento").substring(5,7)%>)
		  ,parseInt(<%=request.getParameter("fecha_nacimiento").substring(8,10)%>));
  const hoy = new Date();
  var edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
  console.log("f: "+ fechaNacimiento.getMonth());
  if(hoy.getMonth()<fechaNacimiento.getMonth()){
	  edad--;
  }
  document.getElementById("resultado").textContent = "Tienes: " + edad+ " años";
}
calcularEdad();
</script>
</p>

</body>	
</html>