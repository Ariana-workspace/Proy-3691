<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eliminar postre | DulceMomento</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body>
<header class="topbar"><a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><nav class="nav-links"><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a><a class="active" href="${pageContext.request.contextPath}/postres.jsp">Catálogo</a></nav></header>
<main class="page-shell confirm-shell">
    <section class="confirm-card">
        <div class="confirm-icon">!</div>
        <span class="eyebrow">CONFIRMAR ACCIÓN</span>
        <h1>¿Eliminar este <em>postre?</em></h1>
        <p>Esta pantalla es una confirmación visual. Si continúas, tu controlador debe eliminar el registro de la base de datos.</p>
        <div class="confirm-product"><strong><c:out value="${postre.nom_postre}"/></strong><span>ID: <c:out value="${param.id}"/></span></div>
        <!-- La eliminación se ejecuta solo al confirmar; cambia action a la ruta real de tu controlador. -->
        <form action="${pageContext.request.contextPath}/postres/eliminar" method="post" class="confirm-actions">
            <input type="hidden" name="id_postre" value="<c:out value='${postre.id_postre != null ? postre.id_postre : param.id}'/>">
            <a class="button button-outline" href="${pageContext.request.contextPath}/postres.jsp">No, volver</a>
            <button type="submit" class="button button-danger">Sí, eliminar</button>
        </form>
    </section>
</main>
<footer class="footer"><a class="brand brand-light" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><p>Un toque dulce para cada día ♡</p></footer>
</body>
</html>
