<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>
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
</style>
</head>
<body>

<div class="container">
    <h1>Clientes</h1>

    <div class="mb-3 text-center">
        <button onclick="window.location.href='/ismac-libreria-nocturno-web/clientes/findOne?opcion=1'; return false;" class="btn btn-primary">Agregar Cliente</button>
    </div>

    <table class="table table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Cédula</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Dirección</th>
                <th>Teléfono</th>
                <th>Correo</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${clientes}">
                <tr>
                    <td>${item.idCliente}</td>
                    <td>${item.cedula}</td>
                    <td>${item.nombre}</td>
                    <td>${item.apellido}</td>
                    <td>${item.direccion}</td>
                    <td>${item.telefono}</td>
                    <td>${item.correo}</td>
                    <td>
                        <button onclick="window.location.href='/ismac-libreria-nocturno-web/clientes/findOne?opcion=1&idCliente=${item.idCliente}'; return false;" class="btn btn-primary btn-sm">Actualizar</button>
                        <button onclick="window.location.href='/ismac-libreria-nocturno-web/clientes/findOne?opcion=2&idCliente=${item.idCliente}'; return false;" class="btn btn-danger btn-sm">Borrar</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>