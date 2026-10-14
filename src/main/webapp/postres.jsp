
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delicias | Catálogo de postres</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #fff9f5;
            color: #49352f;
        }

        /* ENCABEZADO */
        header {
            background: #fff;
            padding: 20px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #f3e5dc;
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
            color: #b85c70;
        }

        .logo span {
            color: #49352f;
        }

        .header-label {
            font-size: 13px;
            color: #987c72;
        }

        /* PRESENTACIÓN */
        .hero {
            text-align: center;
            padding: 55px 20px 35px;
            background: linear-gradient(135deg, #ffede8, #fff7ed);
        }

        .hero .subtitulo {
            color: #b85c70;
            font-weight: 600;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 12px;
        }

        .hero h1 {
            font-size: clamp(30px, 5vw, 46px);
            font-weight: 800;
            margin-bottom: 12px;
        }

        .hero p {
            color: #8e746a;
            font-size: 14px;
        }

        /* CATÁLOGO */
        .catalogo {
            max-width: 1250px;
            margin: auto;
            padding: 40px 25px 70px;
        }

        .catalogo-titulo {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            margin-bottom: 25px;
        }

        .catalogo-titulo h2 {
            font-size: 23px;
        }

        .contador {
            color: #a47770;
            font-size: 13px;
        }

        .postres {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 25px;
        }

        /* TARJETAS */
        .tarjeta {
            background: #fff;
            border-radius: 20px;
            overflow: hidden;
            border: 1px solid #f1e5de;
            box-shadow: 0 5px 20px rgba(94, 55, 40, 0.05);
            transition: transform 0.25s, box-shadow 0.25s;
        }

        .tarjeta:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 28px rgba(94, 55, 40, 0.12);
        }

        .imagen-contenedor {
            height: 210px;
            background: #f8e8df;
            position: relative;
            overflow: hidden;
        }

        .imagen-contenedor img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transition: transform 0.4s;
        }

        .tarjeta:hover .imagen-contenedor img {
            transform: scale(1.05);
        }

        .etiqueta {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 6px 12px;
            border-radius: 30px;
            font-size: 11px;
            font-weight: 600;
            background: #e2f5e8;
            color: #32774b;
        }

        .etiqueta.agotado {
            background: #ffebeb;
            color: #b13f4a;
        }

        .contenido {
            padding: 20px;
        }

        .contenido h3 {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .descripcion {
            color: #927d74;
            font-size: 12px;
            line-height: 1.7;
            min-height: 42px;
            margin-bottom: 15px;
        }

        .detalles {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            padding-bottom: 15px;
            border-bottom: 1px solid #f4eae5;
            font-size: 11px;
            color: #8e746a;
        }

        .precio-fila {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px;
            padding-top: 16px;
        }

        .precio {
            color: #b85c70;
            font-size: 23px;
            font-weight: 800;
        }

        .unidad {
            color: #aa958c;
            font-size: 11px;
        }

        .stock {
            color: #8e746a;
            font-size: 11px;
            margin-top: 5px;
        }

        /* ESTADO VACÍO */
        .vacio {
            grid-column: 1 / -1;
            background: white;
            text-align: center;
            border-radius: 18px;
            padding: 45px 20px;
            color: #987c72;
            border: 1px dashed #e8cfc4;
        }

        footer {
            text-align: center;
            background: #49352f;
            color: #f8e8df;
            padding: 25px;
            font-size: 12px;
        }

        @media (max-width: 600px) {
            header {
                padding: 18px 20px;
            }

            .header-label {
                display: none;
            }

            .catalogo {
                padding: 30px 18px 45px;
            }

            .postres {
                grid-template-columns: 1fr;
            }

            .imagen-contenedor {
                height: 230px;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="logo">Dulce<span>Momento.</span></div>
    <div class="header-label">Hecho con amor, servido con dulzura ♡</div>
</header>

<section class="hero">
    <div class="subtitulo">Un pequeño placer</div>
    <h1>Nuestros postres 🍰</h1>
    <p>Descubre sabores irresistibles preparados especialmente para ti.</p>
</section>

<main class="catalogo">

    <div class="catalogo-titulo">
        <h2>La carta dulce</h2>
        <span class="contador">Nuestros favoritos</span>
    </div>

    <div class="postres">

        <c:forEach var="postre" items="${postres}">

            <article class="tarjeta">

                <div class="imagen-contenedor">

                    <c:if test="${not empty postre.imagen}">
                        <img src="<c:out value='${postre.imagen}'/>"
                             alt="<c:out value='${postre.nom_postre}'/>"
                             loading="lazy">
                    </c:if>

                    <c:if test="${empty postre.imagen}">
                        <img src="https://placehold.co/600x400/f8e8df/b85c70?text=Postre"
                             alt="Imagen no disponible">
                    </c:if>

                    <c:choose>
                        <c:when test="${postre.disponible == 1 && postre.stock > 0}">
                            <span class="etiqueta">Disponible</span>
                        </c:when>
                        <c:otherwise>
                            <span class="etiqueta agotado">Agotado</span>
                        </c:otherwise>
                    </c:choose>

                </div>

                <div class="contenido">

                    <h3><c:out value="${postre.nom_postre}"/></h3>

                    <p class="descripcion">
                        <c:choose>
                            <c:when test="${not empty postre.descripcion}">
                                <c:out value="${postre.descripcion}"/>
                            </c:when>
                            <c:otherwise>
                                Una deliciosa opción para endulzar tu día.
                            </c:otherwise>
                        </c:choose>
                    </p>

                    <div class="detalles">
                        <span>♡ ${postre.calorias} kcal</span>
                        <span>📦 Stock: ${postre.stock}</span>
                    </div>

                    <div class="precio-fila">
                        <div>
                            <div class="precio">
                                S/ <c:out value="${postre.precio}"/>
                            </div>
                            <div class="unidad">Precio por unidad</div>
                        </div>
                    </div>

                </div>

            </article>

        </c:forEach>

        <c:if test="${empty postres}">
            <div class="vacio">
                <h3>Aún no hay postres disponibles 🍮</h3>
                <p>Vuelve pronto para descubrir nuestras delicias.</p>
            </div>
        </c:if>

    </div>

</main>

<footer>
    © 2026 DulceMomento · Un toque dulce para cada día ♡
</footer>

</body>
</html>
```