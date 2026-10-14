<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detalle del postre | DulceMomento</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body>
<header class="topbar"><a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><nav class="nav-links"><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a><a class="active" href="${pageContext.request.contextPath}/postres.jsp">Catálogo</a><a href="${pageContext.request.contextPath}/login.jsp" class="nav-login">Iniciar sesión</a></nav></header>
<main class="page-shell narrow-shell">
    <a class="back-link" href="${pageContext.request.contextPath}/postres.jsp">← Volver al catálogo</a>
    <section class="detail-layout">
        <div class="detail-image">
            <c:choose><c:when test="${not empty postre.imagen}"><img src="<c:out value='${postre.imagen}'/>" alt="<c:out value='${postre.nom_postre}'/>"></c:when><c:otherwise><img src="https://placehold.co/900x1000/f5e2db/70453d?text=Postre" alt="Imagen no disponible"></c:otherwise></c:choose>
        </div>
        <div class="detail-copy">
            <span class="eyebrow">HECHO PARA DISFRUTAR</span>
            <c:choose><c:when test="${not empty postre}"><h1><c:out value="${postre.nom_postre}"/></h1></c:when><c:otherwise><h1>Detalle del postre</h1></c:otherwise></c:choose>
            <p class="detail-description"><c:choose><c:when test="${not empty postre.descripcion}"><c:out value="${postre.descripcion}"/></c:when><c:otherwise>Una deliciosa opción para endulzar tu día. Consulta los detalles del producto.</c:otherwise></c:choose></p>
            <div class="detail-price">S/ <c:out value="${postre.precio}"/></div>
            <div class="detail-facts"><div><small>CALORÍAS</small><strong><c:out value="${postre.calorias}"/> kcal</strong></div><div><small>STOCK DISPONIBLE</small><strong><c:out value="${postre.stock}"/> unidades</strong></div></div>
            <div class="detail-status"><c:choose><c:when test="${postre.disponible == 1 && postre.stock > 0}"><span class="status status-available">Disponible</span></c:when><c:otherwise><span class="status status-empty">Agotado</span></c:otherwise></c:choose></div>
            <div class="detail-actions"><a class="button button-primary" href="${pageContext.request.contextPath}/postre-editar.jsp?id=${postre.id_postre}">Editar postre</a><a class="button button-outline" href="${pageContext.request.contextPath}/postres.jsp">Volver a la carta</a></div>
        </div>
    </section>
</main>
<footer class="footer"><a class="brand brand-light" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><p>Un toque dulce para cada día ♡</p><small>© 2026 DulceMomento</small></footer>
</body>
</html>
