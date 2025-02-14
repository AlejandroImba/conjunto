<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Añadir Autor</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
    }
    .form-container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
        color: #343a40;
    }
    .btn-primary {
        background-color: #0d6efd;
        border: none;
    }
    .btn-secondary {
        background-color: #6c757d;
        border: none;
    }
    .btn-primary:hover {
        background-color: #0b5ed7;
    }
    .btn-secondary:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Autores</h1>
    
    <form action="add" method="POST" class="row g-3">
        

        <input type="hidden" id="idAutor" name="idAutor" value="${autor.idAutor}" />
  
        <div class="col-md-6">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="${autor.nombre}" required>
        </div>

        <div class="col-md-6">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido" value="${autor.apellido}" required>
        </div>

        <div class="col-md-6">
            <label for="pais" class="form-label">País</label>
            <input type="text" class="form-control" id="pais" name="pais" value="${autor.pais}" required>
        </div>
        
        <div class="col-md-6">
            <label for="direccion" class="form-label">Dirección</label>
            <input type="text" class="form-control" id="direccion" name="direccion" value="${autor.direccion}" required>
        </div>

        <div class="col-md-6">
            <label for="telefono" class="form-label">Teléfono</label>
            <input type="text" class="form-control" id="telefono" name="telefono" value="${autor.telefono}" required>
        </div>

        <div class="col-md-6">
            <label for="correo" class="form-label">Correo</label>
            <input type="email" class="form-control" id="correo" name="correo" value="${autor.correo}" required>
        </div>

        <div class="col-12 d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">Guardar</button>
            <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-nocturno-web/autores/findAll'; return false;">Cancelar</button>
        </div>
    
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>