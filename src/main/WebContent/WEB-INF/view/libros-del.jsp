<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar Libro</title>
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
</style>
</head>
<body>

<div class="form-container">
    <h1>Eliminar Libro</h1>
    
    <form action="del" method="get" class="row g-3">

        <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
        
        <div class="col-12">
            <strong>¿Desea eliminar este libro?</strong>
        </div>
        
        <div class="col-12 d-flex justify-content-center gap-3">
            <button type="submit" class="btn btn-danger">Sí, eliminar</button>
            <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findAll'; return false;">Cancelar</button>
        </div>
    
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>