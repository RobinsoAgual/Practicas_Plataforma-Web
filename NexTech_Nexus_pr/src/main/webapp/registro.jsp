<html>
    <title>REGISTRO</title>
<head>
	<link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <h1 class="teta">
        REGISTRO
    </h1>
    <center>
    <nav>
        <a href="catalogo.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cat&aacute;logo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="busqueda.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B&uacute;squeda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
        <a href="index.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </a>
    </nav>
    <br><br>
        <hr>
        

</head>

<body>
    <div>
        <form action="respuesta.jsp" method="post">
            Nombre:<input id="a" type="text" name="nombre" style="margin-left:45px;margin-top:10px; height:25px; width:270px" required/>       
            <br>  
            Apellido:<input type="text" name="apellido" style="margin-left:45px;margin-top:10px; height:25px; width:270px"/>  
            <br>
            Fecha de nacimiento: <input type="date" name="fecha_nacimiento"style="margin-left:45px;margin-top:10px; height:25px; width:145px" required/>
            <br>
            C&eacute;dula:
            <input type="text" id="cedula" name="cedula" maxlength="10" style="margin-left:50px;margin-top:10px; height:25px; width:270px" required>
            <br>
            Estado Civil:
            
            <select name="ecivil" style="margin-left:170px;margin-top:10px; height:25px; width:100px">
            
            <option value="Soltero">Soltero</option>
			<option value="Casado">Casado</option>
			<option value="Divorciado">Divorciado</option>
			<option value="Viudo">Viudo</option>
            
            </select>
            <br>
            
            Color Favorito <input type="color" name="colorfavorito" style="margin-left:160px;margin-top:10px;height:25px; width:100px"/>
            <br>
            Contrase&ntilde;a:<input type="password" name="clave" style="margin-left:20px;margin-top:10px; height:25px; width:270px" required/>
            <br>
            <input type="radio" name="residencia" value="Sur"/>Sur
			<input type="radio" name="residencia" value="Norte"/>Norte
			<input type="radio" name="residencia" value="Centro"/>Centro
			<br>
			Foto: <input type="file" name="foto" id="formulario" class="archivo" accept=".jpg, .jpeg, .png" />
			<br>	
            <button type="submit" name="Registrar" >Registrar</button>
            <button type="reset" name="resetear" >Borrar</button>
        </form>
        
    </div>
    <hr>
</body>
</html>