<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Lista de postres</h1>

        <table border="1">
            <thead>
            <tr>
            <th>Nombre</th>
            <th>Precio</th>
            </tr>
            </thead>

            <tbody>
                <c:forEach var="postre" items="${postres}">
                    <tr>
                    <td>${postre.nom_postre}</td>
                    <td>${postre.precio}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
