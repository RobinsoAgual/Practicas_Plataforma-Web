<!DOCTYPE html>
<html>
<head>
    <title>B&uacute;squeda</title>
    <link rel="shortcut icon" href="recursos/Logo1.ico">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <style>
        /* Estilos para el carrusel */
        .slideshow-container {
            max-width: 700px;
            margin: auto;
            text-align: center; /* Para centrar las imágenes horizontalmente */
        }

        .slideshow-container img {
            height: 400px;
            width: 700px;
            margin: auto; /* Para centrar las imágenes horizontalmente */
            margin-bottom: 20px;
        }

        /* Botones previos y siguientes */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -30px;
            padding: 16px;
            color: white;
            font-size: 20px;
            font-weight: bold;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
    </style>
</head>
<body>
    
    <h1 class="teta">INFORMACIÓN</h1>
    <center>
        <nav>   
            <a href="index.jsp">Inicio</a>
            <a href="catalogo.jsp">Catálogo</a>
            <a href="login.jsp">Login</a>
        </nav>
        <br><br><br>
        <hr>
    </center>
    
    <div class="slideshow-container">
        <img src="recursos/leyenda III.JPG" alt="Imagen 1">
        <img src="recursos/leyenda V.JPG" alt="Imagen 2">
        <img src="recursos/Ancestral I.png" alt="Imagen 3">
        <!-- Agrega más imágenes aquí si lo deseas -->
    </div>

    <!-- Botones previos y siguientes -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByTagName("img");
            if (n > slides.length) {slideIndex = 1}
            if (n < 1) {slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndex-1].style.display = "block";
        }
    </script>
  <br><br><br>
     <h2c style="font-size:35px; font-family:courier new">"DESAROLLADO: ROBINSON AGUAL"</h2c>
    <h2 style="font-size:35px; font-family:courier new">SOY</h2>
        <p style="margin:40px">
            

UN ESTUDIANTE DE INGENIERIA DE COMPUTACIÓN! 
QUE ME GUSTA LOS VIDEO JUEGOS 
        </p>
      <h2>Linkedin</h2>
 <a href="https://www.linkedin.com/in/robinson-agual-51ba20310/">
 <img src="recursos/linkendin.png">
        </a>
    </article>
    <br><br>
</body>
<br>
</body>

<footer>
 <br>
 <a href="creador.jsp">MIS REDES SOCIALES </a>
  <br>
        <a href="https://www.facebook.com/">
            <img src="recursos/facebook.png">
        </a>

        <a href="https://www.instagram.com/">
             <img src="recursos/instagram.png">
        </a>
        
       <a href="https://www.google.com/maps/d/u/0/embed?mid=1i_ztKbN5IOfa6u6dCvMTU9aEvKL8hiY&ehbc=2E312F">
            <img src="recursos/google.png">
        <br>
       
        <hr>
    </footer>

</html>
