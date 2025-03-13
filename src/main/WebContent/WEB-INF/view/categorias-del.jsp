<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar Categoría</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
    }
    .form-container {
        max-width: 500px;
        margin: 50px auto;
        padding: 20px;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        font-size: 24px;
        margin-bottom: 20px;
        color: #343a40;
    }
    strong {
        font-size: 18px;
        color: #dc3545;
    }
    .btn-danger {
        background-color: #dc3545;
        border: none;
    }
    .btn-secondary {
        background-color: #6c757d;
        border: none;
    }
    .btn-danger:hover {
        background-color: #bb2d3b;
    }
    .btn-secondary:hover {
        background-color: #5a6268;
    }
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
<div class="form-container">
    <h1>Eliminar Categoría</h1>
    
    <form action="del" method="get" class="row g-3">
        
        <input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}" />
        
        <div class="col-12">
            <strong>¿Desea eliminar esta categoría?</strong>
        </div>
        
        <div class="col-12 d-flex justify-content-center gap-3">
            <button type="submit" class="btn btn-danger">Sí, eliminar</button>
            <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-nocturno-web/categorias/findAll'; return false;">Cancelar</button>
        </div>
    
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>