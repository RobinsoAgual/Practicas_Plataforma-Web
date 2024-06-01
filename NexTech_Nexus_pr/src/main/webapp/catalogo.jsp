<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Catálogo</title>
    <link rel="shortcut icon" href="recursos/logo.JPG">
    <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    
    <style>
        .cellphone-img {
            width: 300px;
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <h1 class="teta">CATÁLOGO</h1>
    <center>
        <nav>
            <a href="index.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            <a href="busqueda1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Búsqueda&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
            <a href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
        </nav>
        <br><br><br>
        <hr>
    </center>

    <article>
        <div class="phone">
            <img class="phone-img" src="https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_512/https://celumania.com.ec/wp-content/uploads/2021/10/TELEFONO-SAMSUNG-GALAXY-S20-FE-128GB-CLOUD-NAVY.png" alt="Producto 1">
            <div class="product-info">
                <h2>Samsung Galaxy S20</h2>
                <p>Nuevo</p>
                <p>Precio: $800</p>
                <button>Comprar</button>
            </div>
        </div>
    </article>

    <article>
        <div class="phone">
            <img class="phone-img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCE9hOH_wqk4OmxpgqxZeeFKs-cKncs6UbdAv7OexK9Q&s" alt="Producto 2">
            <div class="product-info">
                <h2>iPhone 13 Pro</h2>
                <p>Nuevo</p>
                <p>Precio: $1000</p>
                <button>Comprar</button>
            </div>
        </div>
    </article>

    <article>
        <div class="phone">
            <img class="phone-img" src="data:image/jpeg;base64,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" alt="Producto 3">
            <div class="product-info">
                <h2>OnePlus 9</h2>
                <p>Nuevo</p>
                <p>Precio: $700</p>
                <button>Comprar</button>
            </div>
        </div>
    </article>

    <article>
        <div class="phone">
            <img class="phone-img" src="https://celumania.com.ec/wp-content/uploads/2021/10/TELEFONO-XIAOMI-REDMI-NOTE-10-464GB-BLANCO.png" alt="Producto 4">
            <div class="product-info">
                <h2>Xiaomi Redmi Note 10</h2>
                <p>Nuevo</p>
                <p>Precio: $300</p>
                <button>Comprar</button>
            </div>
        </div>
    </article>

    <article>
        <div class="phone">
            <img class="phone-img" src=https://i.blogs.es/6af018/google-pixel-5-00/1366_2000.jpg alt="Producto 5">
            <div class="product-info">
                <h2>Google Pixel 5</h2>
                <p>Nuevo</p>
                <p>Precio: $600</p>
                <button>Comprar</button>
            </div>
        </div>
    </article>
</body>
</html>
