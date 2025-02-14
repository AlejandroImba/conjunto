<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Libro</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
    }
    .form-container {
        max-width: 800px;
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
</style>
</head>
<body>

<div class="form-container">
    <h1>Libros</h1>
    
    <form action="add" method="post" class="row g-3">
        <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
        <div class="col-md-6">
            <label for="titulo" class="form-label">Título</label>
            <input type="text" class="form-control" id="titulo" name="titulo" value="${libro.titulo}" required>
        </div>
        <div class="col-md-6">
            <label for="editorial" class="form-label">Editorial</label>
            <input type="text" class="form-control" id="editorial" name="editorial" value="${libro.editorial}" required>
        </div>
        <div class="col-md-6">
            <label for="numPaginas" class="form-label">Número de Páginas</label>
            <input type="number" class="form-control" id="numPaginas" name="numPaginas" value="${libro.numPaginas}" required>
        </div>

        <div class="col-md-6">
            <label for="edicion" class="form-label">Edición</label>
            <input type="text" class="form-control" id="edicion" name="edicion" value="${libro.edicion}" required>
        </div>

        <div class="col-md-6">
            <label for="idioma" class="form-label">Idioma</label>
            <input type="text" class="form-control" id="idioma" name="idioma" value="${libro.idioma}" required>
        </div>

        <div class="col-md-6">
            <label for="fechaPublicacion" class="form-label">Fecha de Publicación</label>
            <input type="date" class="form-control" id="fechaPublicacion" name="fechaPublicacion" value="${libro.fechaPublicacion}" required>
        </div>
 
        <div class="col-md-12">
            <label for="descripcion" class="form-label">Descripción</label>
            <input type="text" class="form-control" id="descripcion" name="descripcion" value="${libro.descripcion}" required>
        </div>

        <div class="col-md-6">
            <label for="tipoPasta" class="form-label">Tipo de Pasta</label>
            <input type="text" class="form-control" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}" required>
        </div>

        <div class="col-md-6">
            <label for="iSBN" class="form-label">ISBN</label>
            <input type="text" class="form-control" id="iSBN" name="iSBN" value="${libro.iSBN}" required>
        </div>

        <div class="col-md-6">
            <label for="numEjemplares" class="form-label">Número de Ejemplares</label>
            <input type="number" class="form-control" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}" required>
        </div>

        <div class="col-md-6">
            <label for="portada" class="form-label">Portada</label>
            <input type="text" class="form-control" id="portada" name="portada" value="${libro.portada}" required>
        </div>

        <div class="col-md-6">
            <label for="presentacion" class="form-label">Presentación</label>
            <input type="text" class="form-control" id="presentacion" name="presentacion" value="${libro.presentacion}" required>
        </div>
 
        <div class="col-md-6">
            <label for="precio" class="form-label">Precio</label>
            <input type="number" step="any" class="form-control" id="precio" name="precio" value="${libro.precio}" required>
        </div>

        <div class="col-md-6">
            <label for="idCategoria" class="form-label">Categoría</label>
            <select class="form-select" id="idCategoria" name="idCategoria" required>
                <c:forEach var="item" items="${categorias}">
                    <option value="${item.idCategoria}">${item.categoria}</option>
                </c:forEach>
            </select>
        </div>

        <div class="col-md-6">
            <label for="autor" class="form-label">Autor</label>
            <input type="text" class="form-control" id="autor" name="autor" value="${autor.autor}" required>
        </div>

        <div class="col-12 d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">Guardar</button>
            <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findAll'; return false;">Cancelar</button>
        </div>
    
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>