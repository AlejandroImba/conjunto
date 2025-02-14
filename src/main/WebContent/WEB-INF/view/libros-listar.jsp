<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libros</title>
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
</style>
</head>
<body>

<div class="container">
    <h1>Libros</h1>

    <div class="mb-3 text-center">
        <button onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=1'; return false;" class="btn btn-primary">Agregar Libro</button>
    </div>

    <div class="row">
        <c:forEach var="item" items="${libros}">
            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <img src="/ismac-libreria-nocturno-web/resources/img/${item.portada}" class="card-img-top" alt="Portada del libro">
                    <div class="card-body">
                        <h5 class="card-title">${item.titulo}</h5>
                        <p class="card-text"><strong>Autor:</strong> ${item.autor.nombre} ${item.autor.apellido}</p>
                        <p class="card-text"><strong>Categoría:</strong> ${item.categoria.categoria}</p>
                        <p class="card-text"><strong>Precio:</strong> $${item.precio}</p>
                        <div class="d-flex gap-2">
                            <button onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=1&idLibro=${item.idLibro}'; return false;" class="btn btn-primary btn-sm">Actualizar</button>
                            <button onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=2&idLibro=${item.idLibro}'; return false;" class="btn btn-danger btn-sm">Borrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>