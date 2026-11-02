
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Iniciar sesión | Mi Portal</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px;
            background: linear-gradient(135deg, #312e81, #6366f1, #0891b2);
        }

        .contenedor {
            display: grid;
            grid-template-columns: 1fr 1fr;
            width: 100%;
            max-width: 950px;
            min-height: 550px;
            background: white;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 25px 60px rgba(0, 0, 0, .25);
        }

        /* Panel izquierdo */

        .panel-izquierdo {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 45px;
            color: white;
            position: relative;
            overflow: hidden;
            background: linear-gradient(145deg, #312e81, #4f46e5, #0891b2);
        }

        .panel-izquierdo::before {
            content: "";
            position: absolute;
            width: 280px;
            height: 280px;
            border-radius: 50%;
            background: rgba(255,255,255,.08);
            right: -100px;
            top: 30px;
        }

        .panel-izquierdo::after {
            content: "";
            position: absolute;
            width: 200px;
            height: 200px;
            border-radius: 50%;
            background: rgba(255,255,255,.08);
            left: -80px;
            bottom: -60px;
        }

        .marca {
            position: relative;
            z-index: 1;
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 23px;
            font-weight: 800;
        }

        .logo {
            width: 48px;
            height: 48px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 15px;
            background: white;
            color: #4f46e5;
            font-size: 27px;
        }

        .mensaje-bienvenida {
            position: relative;
            z-index: 1;
        }

        .mensaje-bienvenida h1 {
            font-size: 38px;
            line-height: 1.2;
            margin-bottom: 20px;
        }

        .mensaje-bienvenida p {
            color: #e0e7ff;
            font-size: 15px;
            line-height: 1.8;
        }

        .pie-izquierdo {
            position: relative;
            z-index: 1;
            color: #c7d2fe;
            font-size: 12px;
        }

        /* Formulario */

        .panel-derecho {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 50px;
        }

        .panel-derecho h2 {
            font-size: 30px;
            color: #1e293b;
            margin-bottom: 10px;
        }

        .descripcion {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 35px;
            line-height: 1.6;
        }

        .grupo {
            margin-bottom: 23px;
        }

        .grupo label {
            display: block;
            color: #334155;
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 9px;
        }

        .grupo input {
            width: 100%;
            height: 50px;
            padding: 0 15px;
            border: 1px solid #dbe2ea;
            border-radius: 11px;
            background: #f8fafc;
            font-size: 14px;
            outline: none;
            transition: .3s;
        }

        .grupo input:focus {
            border-color: #6366f1;
            background: white;
            box-shadow: 0 0 0 4px rgba(99,102,241,.12);
        }

        .btn-entrar {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 11px;
            color: white;
            background: linear-gradient(110deg, #6366f1, #0891b2);
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            transition: .3s;
        }

        .btn-entrar:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 22px rgba(99,102,241,.3);
        }

        /* Mensajes */

        .mensaje-error {
            padding: 13px;
            margin-bottom: 20px;
            border-radius: 10px;
            color: #991b1b;
            background: #fee2e2;
            border: 1px solid #fecaca;
            font-size: 13px;
        }

        .mensaje-ok {
            padding: 13px;
            margin-bottom: 20px;
            border-radius: 10px;
            color: #166534;
            background: #dcfce7;
            border: 1px solid #bbf7d0;
            font-size: 13px;
        }

        /* Adaptación para celulares */

        @media (max-width: 750px) {
            .contenedor {
                grid-template-columns: 1fr;
                max-width: 480px;
            }

            .panel-izquierdo {
                min-height: 230px;
                padding: 28px;
            }

            .mensaje-bienvenida {
                margin-top: 30px;
            }

            .mensaje-bienvenida h1 {
                font-size: 27px;
            }

            .pie-izquierdo {
                display: none;
            }

            .panel-derecho {
                padding: 35px 28px;
            }
        }

        @media (max-width: 400px) {
            body {
                padding: 12px;
            }

            .panel-derecho {
                padding: 28px 20px;
            }
        }
    </style>
</head>

<body>

    <div class="contenedor">

        <!-- Panel de bienvenida -->
        <div class="panel-izquierdo">

            <div class="marca">
                <div class="logo">✦</div>
                <span>Mi Portal</span>
            </div>

            <div class="mensaje-bienvenida">
                <h1>¡Bienvenido de nuevo!</h1>

                <p>
                    Accede a tu espacio personal y disfruta
                    de todas las herramientas disponibles
                    para gestionar tu información.
                </p>
            </div>

            <div class="pie-izquierdo">
                Plataforma de gestión · Todos los derechos reservados
            </div>

        </div>

        <!-- Formulario de inicio de sesión -->
        <div class="panel-derecho">

            <h2>Iniciar sesión</h2>

            <p class="descripcion">
                Ingresa tus credenciales para acceder a la plataforma.
            </p>

            <c:if test="${param.error != null}">
                <div class="mensaje-error">
                    ⚠ Usuario o clave incorrectos. Verifica tus datos.
                </div>
            </c:if>

            <c:if test="${param.logout != null}">
                <div class="mensaje-ok">
                    ✓ Cerraste sesión correctamente.
                </div>
            </c:if>

            <form action="/login" method="post">

                <div class="grupo">
                    <label for="username">Nombre de usuario</label>

                    <input
                        type="text"
                        id="username"
                        name="username"
                        placeholder="Ingresa tu usuario"
                        autocomplete="username"
                        required />
                </div>

                <div class="grupo">
                    <label for="password">Contraseña</label>

                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="Ingresa tu contraseña"
                        autocomplete="current-password"
                        required />
                </div>

                <input
                    type="hidden"
                    name="${_csrf.parameterName}"
                    value="${_csrf.token}" />

                <button type="submit" class="btn-entrar">
                    Entrar a mi cuenta →
                </button>

            </form>

        </div>

    </div>

</body>
</html>
