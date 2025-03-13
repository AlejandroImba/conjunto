<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categorías</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 30px;
    }
    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: #343a40;
    }
    .table {
        margin-bottom: 20px;
    }
    .btn-primary {
        background-color: #0d6efd;
        border: none;
    }
    .btn-danger {
        background-color: #dc3545;
        border: none;
    }
    body {
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 30px;
    }
    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: #343a40;
    }
    .table {
        margin-bottom: 20px;
    }
    .btn-primary {
        background-color: #0d6efd;
        border: none;
    }
    .btn-danger {
        background-color: #dc3545;
        border: none;
    }
    body {
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 30px;
    }
    h1 {
        text-align: center;
        margin-bottom: 30px;
        color: #343a40;
    }
    .card {
        margin-bottom: 20px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }
    .card:hover {
        transform: translateY(-5px);
    }
    .card-img-top {
        width: 100%;
        height: 300px; /* Aumentamos la altura de la imagen */
        object-fit: cover; /* Ajustamos la imagen para que no se distorsione */
    }
    .btn-primary {
        background-color: #0d6efd;
        border: none;
    }
    .btn-danger {
        background-color: #dc3545;
        border: none;
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
<div class="container">
    <h1>Categorías</h1>

    <div class="mb-3 text-center">
        <button onclick="window.location.href='/ismac-libreria-nocturno-web/categorias/findOne?opcion=1'; return false;" class="btn btn-primary">Agregar Categoría</button>
    </div>

    <table class="table table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Categoría</th>
                <th>Descripción</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${categorias}">
                <tr>
                    <td>${item.idCategoria}</td>
                    <td>${item.categoria}</td>
                    <td>${item.descripcion}</td>
                    <td>
                        <button onclick="window.location.href='/ismac-libreria-nocturno-web/categorias/findOne?opcion=1&idCategoria=${item.idCategoria}'; return false;" class="btn btn-primary btn-sm">Actualizar</button>
                        <button onclick="window.location.href='/ismac-libreria-nocturno-web/categorias/findOne?opcion=2&idCategoria=${item.idCategoria}'; return false;" class="btn btn-danger btn-sm">Borrar</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>