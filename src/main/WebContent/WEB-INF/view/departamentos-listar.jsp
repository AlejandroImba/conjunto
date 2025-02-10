<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Departamentos del Edificio</title>
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
      <ul class="nav nav-tabs">
  		<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Departamentos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/bddepartamentos-web/">Inicio</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="#">Areas Verdes</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="#">Dejar un reclamo</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<h1 class="mb-4">Departamentos del Edificio</h1>

<!-- Tabla de Departamentos -->
<table class="table table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>ID Departamento</th>
            <th>Número de Cuartos</th>
            <th>Baños</th>
            <th>Sala</th>
            <th>Cocina</th>
            <th>Edificio</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="departamento" items="${departamentos}">
            <tr>
                <td>${departamento.idDepartamento}</td>
                <td>${departamento.numCuartos}</td>
                <td>${departamento.baños}</td>
                <td>${departamento.sala}</td>
                <td>${departamento.cocina}</td>
                <td>${departamento.edificio.color}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- Bootstrap JS (opcional, si necesitas funcionalidades de Bootstrap) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>