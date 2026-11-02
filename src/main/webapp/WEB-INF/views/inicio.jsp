
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Inicio | Mi Portal</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #f3f5fc;
            color: #1e293b;
            min-height: 100vh;
        }

        /* Barra de navegación */

        .navbar {
            width: 100%;
            min-height: 75px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 7%;
            background: white;
            box-shadow: 0 3px 15px rgba(15,23,42,.06);
        }

        .marca {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 21px;
            font-weight: 800;
            color: #1e293b;
        }

        .logo {
            width: 45px;
            height: 45px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 25px;
            background: linear-gradient(135deg, #6366f1, #06b6d4);
        }

        .usuario-nav {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .usuario-info {
            font-size: 12px;
            color: #64748b;
            text-align: right;
        }

        .usuario-info strong {
            display: block;
            margin-top: 4px;
            font-size: 14px;
            color: #1e293b;
        }

        .btn-salir {
            padding: 11px 17px;
            border: 1px solid #fecaca;
            border-radius: 10px;
            background: #fef2f2;
            color: #dc2626;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            transition: .3s;
        }

        .btn-salir:hover {
            background: #dc2626;
            color: white;
        }

        /* Contenido */

        .contenedor {
            width: 86%;
            max-width: 1250px;
            margin: 45px auto;
        }

        .bienvenida {
            position: relative;
            overflow: hidden;
            padding: 45px;
            border-radius: 22px;
            color: white;
            background: linear-gradient(115deg, #4338ca, #6366f1 55%, #06b6d4);
            box-shadow: 0 12px 30px rgba(79,70,229,.18);
        }

        .bienvenida::after {
            content: "";
            position: absolute;
            width: 260px;
            height: 260px;
            right: -60px;
            top: -120px;
            border-radius: 50%;
            background: rgba(255,255,255,.12);
        }

        .bienvenida h1 {
            position: relative;
            z-index: 1;
            font-size: 33px;
            margin-bottom: 13px;
        }

        .bienvenida p {
            position: relative;
            z-index: 1;
            max-width: 650px;
            color: #e0e7ff;
            font-size: 15px;
            line-height: 1.8;
        }

        /* Secciones */

        .seccion {
            margin-top: 38px;
        }

        .titulo-seccion {
            font-size: 23px;
            margin-bottom: 8px;
            color: #1e293b;
        }

        .descripcion-seccion {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 20px;
        }

        /* Roles */

        .roles {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }

        .rol {
            padding: 10px 17px;
            border-radius: 30px;
            font-size: 12px;
            font-weight: 800;
            color: #4338ca;
            background: #eef2ff;
            border: 1px solid #c7d2fe;
        }

        /* Tarjetas de acceso */

        .tarjetas {
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 22px;
        }

        .tarjeta {
            display: flex;
            align-items: center;
            gap: 20px;
            padding: 27px;
            text-decoration: none;
            color: #1e293b;
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 17px;
            transition: .3s;
        }

        .tarjeta:hover {
            transform: translateY(-5px);
            border-color: #a5b4fc;
            box-shadow: 0 12px 25px rgba(15,23,42,.08);
        }

        .icono {
            flex-shrink: 0;
            width: 62px;
            height: 62px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 17px;
            font-size: 29px;
        }

        .morado {
            background: #ede9fe;
        }

        .naranja {
            background: #ffedd5;
        }

        .informacion h3 {
            font-size: 17px;
            margin-bottom: 8px;
        }

        .informacion p {
            color: #64748b;
            font-size: 13px;
            line-height: 1.6;
        }

        /* Pie de página */

        footer {
            margin-top: 60px;
            padding: 25px;
            text-align: center;
            color: #94a3b8;
            font-size: 12px;
        }

        /* Responsive */

        @media (max-width: 750px) {
            .navbar {
                padding: 15px 5%;
            }

            .contenedor {
                width: 90%;
                margin: 25px auto;
            }

            .bienvenida {
                padding: 30px 25px;
            }

            .bienvenida h1 {
                font-size: 26px;
            }

            .tarjetas {
                grid-template-columns: 1fr;
            }

            .usuario-info {
                display: none;
            }
        }

        @media (max-width: 430px) {
            .marca {
                font-size: 17px;
            }

            .btn-salir {
                padding: 9px 11px;
                font-size: 11px;
            }

            .tarjeta {
                padding: 20px;
                gap: 14px;
            }

            .icono {
                width: 52px;
                height: 52px;
                font-size: 24px;
            }
        }
    </style>
</head>

<body>

    <!-- Barra superior -->
    <header class="navbar">

        <div class="marca">
            <div class="logo">✦</div>
            <span>Mi Portal</span>
        </div>

        <div class="usuario-nav">

            <div class="usuario-info">
                Sesión iniciada como

                <strong>
                    <c:out value="${username}"/>
                </strong>
            </div>

            <form action="/logout" method="post">

                <input
                    type="hidden"
                    name="${_csrf.parameterName}"
                    value="${_csrf.token}" />

                <button type="submit" class="btn-salir">
                    Cerrar sesión ↗
                </button>

            </form>

        </div>

    </header>


    <!-- Contenido principal -->
    <main class="contenedor">

        <!-- Bienvenida -->
        <section class="bienvenida">

            <h1>
                ¡Hola,
                <c:out value="${username}"/>!
            </h1>

            <p>
                Nos alegra tenerte de vuelta.
                Desde este espacio puedes gestionar tu información
                y acceder a las herramientas disponibles en la plataforma.
            </p>

        </section>


        <!-- Roles del usuario -->
        <section class="seccion">

            <h2 class="titulo-seccion">
                Tu perfil
            </h2>

            <p class="descripcion-seccion">
                Estos son los roles asociados a tu cuenta.
            </p>

            <div class="roles">

                <c:forEach var="r" items="${roles}">

                    <span class="rol">
                        <c:out value="${r}"/>
                    </span>

                </c:forEach>

            </div>

        </section>


        <!-- Opciones disponibles -->
        <section class="seccion">

            <h2 class="titulo-seccion">
                Accesos rápidos
            </h2>

            <p class="descripcion-seccion">
                Selecciona la opción que deseas utilizar.
            </p>

            <div class="tarjetas">

                <!-- Consultar productos -->
                <a href="/productos" class="tarjeta">

                    <div class="icono morado">
                        🛍️
                    </div>

                    <div class="informacion">
                        <h3>Ver productos</h3>

                        <p>
                            Consulta los productos disponibles
                            y revisa su información.
                        </p>
                    </div>

                </a>


                <!-- Crear producto -->
                <a href="/productos/nuevo" class="tarjeta">

                    <div class="icono naranja">
                        ✚
                    </div>

                    <div class="informacion">
                        <h3>Nuevo producto</h3>

                        <p>
                            Registra un nuevo producto
                            dentro del sistema.
                        </p>
                    </div>

                </a>

            </div>

        </section>

    </main>


    <footer>
        Mi Portal · Plataforma de gestión
    </footer>

</body>
</html>
