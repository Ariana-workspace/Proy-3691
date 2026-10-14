<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DulceMomento | Inicio</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body>
<header class="topbar">
    <a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a>
    <nav class="nav-links">
        <a class="active" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/postres.jsp">Catálogo</a>
        <a href="${pageContext.request.contextPath}/login.jsp" class="nav-login">Iniciar sesión</a>
    </nav>
</header>

<main>
    <section class="hero">
        <div class="hero-copy">
            <span class="eyebrow">UN PEQUEÑO PLACER, TODOS LOS DÍAS</span>
            <h1>Momentos dulces,<br><em>recuerdos inolvidables.</em></h1>
            <p>Descubre postres preparados para convertir cualquier día en una ocasión especial.</p>
            <a class="button button-primary" href="${pageContext.request.contextPath}/postres.jsp">Explorar catálogo <span>↗</span></a>
            <div class="hero-note"><span class="note-dot"></span> Hecho con cariño, servido con dulzura</div>
        </div>
        <div class="hero-visual">
            <div class="hero-orbit orbit-one"></div>
            <div class="hero-orbit orbit-two"></div>
            <img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=1000&q=85" alt="Pastel decorado">
            <div class="floating-note"><span>♡</span><div><strong>Un toque dulce</strong><small>para cada momento</small></div></div>
        </div>
    </section>

    <section class="section section-soft">
        <div class="section-heading">
            <div><span class="eyebrow">NUESTRA SELECCIÓN</span><h2>Pequeñas grandes delicias</h2></div>
            <a class="text-link" href="${pageContext.request.contextPath}/postres.jsp">Ver todos los postres →</a>
        </div>
        <div class="feature-grid">
            <article class="feature-card">
                <img src="https://images.unsplash.com/photo-1488477181946-6428a0291777?auto=format&fit=crop&w=700&q=80" alt="Postre con fresas">
                <div class="feature-overlay"><span>01 / FRESCO Y FRUTAL</span><h3>Dulzura natural</h3><p>Sabores frescos que alegran el día.</p></div>
            </article>
            <article class="feature-card">
                <img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=700&q=80" alt="Pastel de chocolate">
                <div class="feature-overlay"><span>02 / PARA COMPARTIR</span><h3>Un momento especial</h3><p>El detalle perfecto para celebrar.</p></div>
            </article>
            <article class="feature-card">
                <img src="https://images.unsplash.com/photo-1551024506-0f0a9f7c6a9f?auto=format&fit=crop&w=700&q=80" alt="Dulces variados" onerror="this.src='https://placehold.co/700x800/f5ded6/70453d?text=Dulce+Momento'">
                <div class="feature-overlay"><span>03 / HECHO CON AMOR</span><h3>Antojos felices</h3><p>Un capricho delicioso para ti.</p></div>
            </article>
        </div>
    </section>

    <section class="callout">
        <div><span class="eyebrow">¿LISTO PARA ALGO DELICIOSO?</span><h2>Tu próximo postre favorito<br>te está esperando.</h2></div>
        <a class="button button-light" href="${pageContext.request.contextPath}/postres.jsp">Descubrir postres ↗</a>
    </section>
</main>
<footer class="footer"><a class="brand brand-light" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><p>Un toque dulce para cada día ♡</p><small>© 2026 DulceMomento</small></footer>
</body>
</html>
