<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 
	<h1>Administradores</h1>
	
	<button onclick="window.location.href='/bddepartamentos-web/administradores/findOne?opcion=1'; return false;">Agregar</button>
	
	<table>
		<thead>
			<tr>
				<th>idCliente</th>
				<th>nombre</th>
				<th>apellido</th>
				<th>telefono</th>
				<th>correo</th>
				<th>codigo</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${administradores}">
				<tr>
					<td>${item.idAdministrador}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>${item.codigo}</td>
					<td>
						<button onclick="window.location.href='/bddepartamentos-web/administradores/findOne?opcion=1&idAdministrador=${item.idAdministrador}'; return false;">Actualizar</button>
						<button onclick="window.location.href='/bddepartamentos-web/administradores/findOne?opcion=2&idAdministrador=${item.idAdministrador}'; return false;">Borrar</button>
					</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>
 
</body>
</html>