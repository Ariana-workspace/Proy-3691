<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Catálogo | DulceMomento</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body>
<header class="topbar">
    <a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a>
    <nav class="nav-links"><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a><a class="active" href="${pageContext.request.contextPath}/postres.jsp">Catálogo</a><a href="${pageContext.request.contextPath}/login.jsp" class="nav-login">Iniciar sesión</a></nav>
</header>

<main class="page-shell">
    <section class="page-intro">
        <span class="eyebrow">EL CATÁLOGO</span>
        <h1>Nuestra carta <em>dulce.</em></h1>
        <p>Encuentra ese sabor especial que hará tu día un poquito mejor.</p>
    </section>

    <div class="catalog-toolbar">
        <div><strong>Todos los postres</strong><span class="muted"> · Selección de la casa</span></div>
        <a class="button button-primary button-small" href="${pageContext.request.contextPath}/postre-insertar.jsp">＋ Agregar postre</a>
    </div>

    <section class="dessert-grid">
        <c:forEach var="postre" items="${postres}">
            <article class="dessert-card">
                <a class="dessert-image" href="${pageContext.request.contextPath}/postre-detalle.jsp?id=${postre.id_postre}">
                    <c:choose>
                        <c:when test="${not empty postre.imagen}"><img src="<c:out value='${postre.imagen}'/>" alt="<c:out value='${postre.nom_postre}'/>" loading="lazy"></c:when>
                        <c:otherwise><img src="https://placehold.co/700x520/f5e2db/70453d?text=Postre" alt="Imagen no disponible"></c:otherwise>
                    </c:choose>
                    <c:choose><c:when test="${postre.disponible == 1 && postre.stock > 0}"><span class="status status-available">Disponible</span></c:when><c:otherwise><span class="status status-empty">Agotado</span></c:otherwise></c:choose>
                </a>
                <div class="dessert-body">
                    <div class="dessert-title-row"><h2><c:out value="${postre.nom_postre}"/></h2><span class="heart">♡</span></div>
                    <p class="dessert-description"><c:choose><c:when test="${not empty postre.descripcion}"><c:out value="${postre.descripcion}"/></c:when><c:otherwise>Una deliciosa opción para endulzar tu día.</c:otherwise></c:choose></p>
                    <div class="dessert-meta"><span>♡ <c:out value="${postre.calorias}"/> kcal</span><span>Stock: <c:out value="${postre.stock}"/></span></div>
                    <div class="dessert-bottom"><div><strong class="price">S/ <c:out value="${postre.precio}"/></strong><small>Precio por unidad</small></div><a class="round-link" href="${pageContext.request.contextPath}/postre-detalle.jsp?id=${postre.id_postre}" aria-label="Ver detalle">↗</a></div>
                    <div class="admin-actions"><a href="${pageContext.request.contextPath}/postre-editar.jsp?id=${postre.id_postre}">Editar</a><a class="danger-link" href="${pageContext.request.contextPath}/postre-eliminar.jsp?id=${postre.id_postre}">Eliminar</a></div>
                </div>
            </article>
        </c:forEach>
        <c:if test="${empty postres}">
            <div class="empty-state"><span class="empty-icon">♡</span><h2>Aún no hay postres en la carta</h2><p>Agrega el primero para comenzar a llenar la vitrina.</p><a class="button button-primary" href="${pageContext.request.contextPath}/postre-insertar.jsp">Agregar primer postre</a></div>
        </c:if>
    </section>
</main>
<footer class="footer"><a class="brand brand-light" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><p>Un toque dulce para cada día ♡</p><small>© 2026 DulceMomento</small></footer>
</body>
</html>
