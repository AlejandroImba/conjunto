<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edificios</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
 <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">CONJUNTOSIMBA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-tabs me-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Edificios</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/bddepartamentos-web/edificios/findAll">Administradores</a>
        </li>
                <li class="nav-item">
          <a class="nav-link" href="#">Departamentos</a>
        </li>
                <li class="nav-item">
          <a class="nav-link" href="#">Inquilinos</a>
        </li>
                <li class="nav-item">
          <a class="nav-link" href="#">Guardias</a>
        </li>
                <li class="nav-item">
          <a class="nav-link" href="#">Reservas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Reclamos</a>
        </li>
      </ul>
      <!-- Botón de Iniciar sesión como Admin alineado a la derecha -->
      <div class="d-flex">
        <a href="/bddepartamentos-web/" class="btn btn-outline-primary">Salir del modo administrador</a>
      </div>
    </div>
  </div>
</nav>
<h1 class="mb-4">Edificios</h1>


<!-- Tabla de Edificios -->
<table class="table table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>ID Edificio</th>
            <th>Color</th>
            <th>Número de Departamentos</th>
            <th>Pisos</th>
            <th>Administrador</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="edificio" items="${edificios}">
            <tr>
                <td>${edificio.idEdificio}</td>
                <td>${edificio.color}</td>
                <td>${edificio.num_dep}</td>
                <td>${edificio.pisos}</td>
                <td>${edificio.administrador.nombre} ${edificio.administrador.apellido}</td>
                <td>
  <button class="btn btn-info" class="btn btn-danger" class="btn btn-primary" type="button" onclick="window.location.href='/bddepartamentos-web/departamentos/findAll'">Ver departamentos</button>
                </td>
            </tr>
            </c:forEach>
            <!-- Sección de Departamentos -->

        
    </tbody>
</table>

<!-- Bootstrap JS (opcional, si necesitas funcionalidades de Bootstrap) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>