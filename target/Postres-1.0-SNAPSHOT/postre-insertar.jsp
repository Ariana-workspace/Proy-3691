<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agregar postre | DulceMomento</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body>
<header class="topbar"><a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><nav class="nav-links"><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a><a class="active" href="${pageContext.request.contextPath}/postres.jsp">Catálogo</a></nav></header>
<main class="page-shell form-shell">
    <a class="back-link" href="${pageContext.request.contextPath}/postres.jsp">← Volver al catálogo</a>
    <section class="form-heading"><span class="eyebrow">ADMINISTRAR CATÁLOGO</span><h1>Agregar un <em>postre.</em></h1><p>Completa los datos para incorporar una nueva delicia a la carta.</p></section>
    <!-- Cambia action por la ruta real de tu controlador/servlet. -->
    <form class="dessert-form" action="${pageContext.request.contextPath}/postres/insertar" method="post">
        <div class="form-grid">
            <label class="field field-full">Nombre del postre<input type="text" name="nom_postre" placeholder="Ej. Cheesecake de fresa" required></label>
            <label class="field field-full">Descripción<textarea name="descripcion" rows="4" placeholder="Describe el sabor, los ingredientes o lo especial de este postre"></textarea></label>
            <label class="field">Precio (S/)<input type="number" name="precio" min="0" step="0.01" placeholder="12.50" required></label>
            <label class="field">Stock<input type="number" name="stock" min="0" step="1" placeholder="10" required></label>
            <label class="field">Calorías (kcal)<input type="number" name="calorias" min="0" step="1" placeholder="320"></label>
            <label class="field">Disponible<select name="disponible"><option value="1">Sí, disponible</option><option value="0">No disponible</option></select></label>
            <label class="field field-full">URL de la imagen<input type="url" name="imagen" placeholder="https://ejemplo.com/mi-postre.jpg"><small>Por ahora se utiliza una URL pública de imagen.</small></label>
        </div>
        <div class="form-actions"><a class="button button-outline" href="${pageContext.request.contextPath}/postres.jsp">Cancelar</a><button class="button button-primary" type="submit">Guardar postre <span>↗</span></button></div>
    </form>
</main>
<footer class="footer"><a class="brand brand-light" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><p>Un toque dulce para cada día ♡</p></footer>
</body>
</html>
