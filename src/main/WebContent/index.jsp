<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Menú de Opciones</title>
</head>
<body>
    <h1>Selecciona una Sección</h1>
    <form action="seleccionarOpcion" method="post">
        <label for="opcion">Elige una opción:</label>
        <select id="opcion" name="opcion">
            <c:forEach var="opcion" items="${opciones}">
                <option value="${opcion}">${opcion}</option>
            </c:forEach>
        </select>
        <button type="submit">Ir</button>
    </form>
</body>
</html>