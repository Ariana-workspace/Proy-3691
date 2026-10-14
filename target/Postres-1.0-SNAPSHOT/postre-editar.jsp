<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar postre | DulceMomento</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body>
<header class="topbar"><a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><nav class="nav-links"><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a><a class="active" href="${pageContext.request.contextPath}/postres.jsp">Catálogo</a></nav></header>
<main class="page-shell form-shell">
    <a class="back-link" href="${pageContext.request.contextPath}/postres.jsp">← Volver al catálogo</a>
    <section class="form-heading"><span class="eyebrow">ADMINISTRAR CATÁLOGO</span><h1>Editar <em>postre.</em></h1><p>Actualiza la información y guarda los cambios.</p></section>
    <!-- El controlador debe cargar el postre por ID y enviarlo como atributo "postre". -->
    <form class="dessert-form" action="${pageContext.request.contextPath}/postres/actualizar" method="post">
        <input type="hidden" name="id_postre" value="<c:out value='${postre.id_postre}'/>">
        <div class="form-grid">
            <label class="field field-full">Nombre del postre<input type="text" name="nom_postre" value="<c:out value='${postre.nom_postre}'/>" placeholder="Nombre del postre" required></label>
            <label class="field field-full">Descripción<textarea name="descripcion" rows="4" placeholder="Descripción"><c:out value="${postre.descripcion}"/></textarea></label>
            <label class="field">Precio (S/)<input type="number" name="precio" min="0" step="0.01" value="<c:out value='${postre.precio}'/>" required></label>
            <label class="field">Stock<input type="number" name="stock" min="0" step="1" value="<c:out value='${postre.stock}'/>" required></label>
            <label class="field">Calorías (kcal)<input type="number" name="calorias" min="0" step="1" value="<c:out value='${postre.calorias}'/>"></label>
            <label class="field">Disponible<select name="disponible"><option value="1" ${postre.disponible == 1 ? 'selected' : ''}>Sí, disponible</option><option value="0" ${postre.disponible != 1 ? 'selected' : ''}>No disponible</option></select></label>
            <label class="field field-full">URL de la imagen<input type="url" name="imagen" value="<c:out value='${postre.imagen}'/>" placeholder="https://ejemplo.com/mi-postre.jpg"></label>
        </div>
        <div class="form-actions"><a class="button button-outline" href="${pageContext.request.contextPath}/postres.jsp">Cancelar</a><button class="button button-primary" type="submit">Guardar cambios ↗</button></div>
    </form>
</main>
<footer class="footer"><a class="brand brand-light" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><p>Un toque dulce para cada día ♡</p></footer>
</body>
</html>
