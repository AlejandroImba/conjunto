<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Librería Online</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 56px; /* Para que el contenido no se superponga con la barra fija */
        }
        .section-title {
            margin-bottom: 40px;
        }
        .card-img-top {
            height: 200px; /* Altura uniforme para las imágenes */
            object-fit: cover; /* Ajusta las imágenes sin deformarlas */
        }
        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            margin-top: 40px;
        }
    </style>
</head>
<body>

    <!-- Barra de Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
         <a class="navbar-brand" href="/ismac-libreria-nocturno-web/">Librería Online</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/ismac-libreria-nocturno-web/clientes/findAll">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ismac-libreria-nocturno-web/autores/findAll">Autores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ismac-libreria-nocturno-web/categorias/findAll">Categorías</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ismac-libreria-nocturno-web/libros/findAll">Libros</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Contenido Principal -->
    <div class="container mt-4">

        <!-- Sección Clientes -->
        <section id="clientes" class="text-center section-title">
            <h2 class="mb-4">La libreria online más grande de Quito</h2>
            <p class="lead">Únete a nuestra comunidad de lectores apasionados. Descubre historias que te cambiarán la vida.</p>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="card">
                        <img src="/ismac-libreria-nocturno-web/resources/img/libreria.jpg" class="card-img-top" alt="">
                        <div class="card-body">
                            <h5 class="card-title">¿Descubre la impresionante cantidad de libros que puedes leer</h5>
                            <p class="card-text">Regístrate ahora y obtén acceso exclusivo a promociones y eventos literarios.</p>
                            <a href="/ismac-libreria-nocturno-web/libros/findAll" class="btn btn-primary">Conocer más</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p>&copy; 2023 Alejandro Imbaquingo. Todos los derechos reservados.</p>
        </div>
    </footer>

    <!-- Bootstrap JS y dependencias -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>