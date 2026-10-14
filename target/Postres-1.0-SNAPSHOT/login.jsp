<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar sesión | DulceMomento</title>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/postres.css">
</head>
<body class="login-page">
<header class="topbar"><a class="brand" href="${pageContext.request.contextPath}/index.jsp">Dulce<span>Momento.</span></a><a class="back-link" href="${pageContext.request.contextPath}/index.jsp">← Volver al inicio</a></header>
<main class="login-layout">
    <section class="login-art">
        <img src="https://images.unsplash.com/photo-1488477181946-6428a0291777?auto=format&fit=crop&w=1000&q=85" alt="Dulces de pastelería" onerror="this.src='https://placehold.co/900x1100/f1d8d0/70453d?text=Dulce+Momento'">
        <div class="login-art-copy"><span class="eyebrow">QUÉ BUENO TENERTE AQUÍ</span><h2>Un mundo de dulzura<br>te espera.</h2></div>
    </section>
    <section class="login-panel">
        <div class="login-card">
            <span class="eyebrow">BIENVENIDO/A</span>
            <h1>Inicia sesión</h1>
            <p>Entra para seguir disfrutando de tus postres favoritos.</p>
            <!-- Demo temporal: el botón solo abre la página principal; no autentica usuarios. -->
            <form action="${pageContext.request.contextPath}/index.jsp" method="get">
                <label class="field">Correo electrónico<input type="email" name="email" placeholder="tu@correo.com" autocomplete="email"></label>
                <label class="field">Contraseña<input type="password" name="password" placeholder="Ingresa tu contraseña" autocomplete="current-password"></label>
                <button class="button button-primary button-wide" type="submit">Entrar <span>↗</span></button>
            </form>
            <p class="demo-note"><span>ⓘ</span> Acceso de demostración: por ahora no se validan las credenciales.</p>
        </div>
    </section>
</main>
</body>
</html>
