<html>
    <title>CAMBIO DE CLAVE</title>
<head>
	<link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
       CAMBIO DE CLAVE
    </h1>
    <center>
    <nav>
        <a href=".jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Producto&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="busqueda.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cambio de clave&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="index.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cerrar Seccion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
    </nav>
    <br><br>
        <hr>
        

</head>

<body>
    <div>
        <form action="vrfclave.jsp" method="post">
            Clave Anterior:<input type="text" name="clave" style="margin-left:45px;margin-top:10px; height:25px; width:270px" required/>       
            <br>  
            Repita la Clave:<input type="text" name="claver" style="margin-left:45px;margin-top:10px; height:25px; width:270px" required/>  
            <br>
            <br>
            Clave Nueva:<input type="text" name="claven" style="margin-left:45px;margin-top:10px; height:25px; width:270px" required/>       
            <br>  
            Repita la Clave:<input type="text" name="clavenr" style="margin-left:45px;margin-top:10px; height:25px; width:270px" required/>  
            <br>
            
            <button type="submit" name="cambiar" >Cambiar Clave</button>
            <button type="reset" name="resetear" >Borrar</button>
        </form>
        
    </div>
    <hr>
</body>
</html>