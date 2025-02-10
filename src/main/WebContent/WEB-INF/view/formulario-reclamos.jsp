<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realizar un Reclamo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">CONJUNTOSIMBA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="nav nav-tabs me-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Dejar un reclamo</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/bddepartamentos-web/edificios/findAll">Edificios</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/bddepartamentos-web/areas/areassociales">Areas Sociales</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/bddepartamentos-web/">Inicio</a>
        </li>
      </ul>
      <div class="d-flex">
        <a href="login/" class="btn btn-outline-primary">Iniciar sesión como Admin</a>
      </div>
    </div>
  </div>
</nav>
<div class="container py-5">
    <h1 class="text-center mb-4">Realizar un Reclamo</h1>
    <form class="mt-3" action="/bddepartamentos-web/reclamos/insertar" method="post" onsubmit="return validarFecha(event)">
        <div class="mb-3">
            <label for="fecha" class="form-label">Fecha</label>
            <input type="date" class="form-control" id="fecha" name="fecha_reclamo" max="<%= java.time.LocalDate.now() %>" required>
        </div>
        <div class="mb-3">
            <label for="mensaje" class="form-label">Descripción del Reclamo</label>
            <textarea class="form-control" id="mensaje" name="descripcion" rows="4" required></textarea>
        </div>
        <div class="mb-3">
            <label for="inquilino" class="form-label">Inquilino</label>
            <select class="form-select" id="inquilino" name="id_inquilino" required>
                <c:forEach var="inquilino" items="${inquilinos}">
                    <option value="${inquilino.id_inquilino}">${inquilino.nombre} ${inquilino.apellido}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Enviar Reclamo</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Función para establecer la fecha actual en el campo de fecha
    function establecerFechaActual() {
        var fechaInput = document.getElementById('fecha');
        var fechaActual = new Date();
        var año = fechaActual.getFullYear();
        var mes = ('0' + (fechaActual.getMonth() + 1)).slice(-2); // Añade un 0 si es necesario
        var dia = ('0' + fechaActual.getDate()).slice(-2); // Añade un 0 si es necesario
        var fechaFormateada = año + '-' + mes + '-' + dia; // Formato YYYY-MM-DD
        fechaInput.value = fechaFormateada;
    }

    // Llamar a la función al cargar la página
    window.onload = establecerFechaActual;

    // Función para validar la fecha
    function validarFecha(event) {
        var fechaInput = document.getElementById('fecha').value;
        var fechaSeleccionada = new Date(fechaInput);
        var fechaActual = new Date();

        // Comparar las fechas sin tener en cuenta la hora
        fechaSeleccionada.setHours(0, 0, 0, 0);
        fechaActual.setHours(0, 0, 0, 0);

        if (fechaSeleccionada > fechaActual) {
            alert("No se permiten fechas futuras. Por favor, selecciona una fecha válida.");
            return false; // Evita que el formulario se envíe
        }
        return true; // Permite que el formulario se envíe
    }
</script>
</body>
</html>