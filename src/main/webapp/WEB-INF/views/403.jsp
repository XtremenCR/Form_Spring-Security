
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>403 | Acceso denegado</title>

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
            justify-content: center;
            align-items: center;
            padding: 25px;
            background: linear-gradient(135deg, #fff1f2, #fce7f3, #ede9fe);
        }

        .contenedor-error {
            width: 100%;
            max-width: 560px;
            padding: 55px 40px;
            text-align: center;
            background: white;
            border-radius: 25px;
            box-shadow: 0 20px 60px rgba(136,19,55,.12);
        }

        .icono-error {
            width: 85px;
            height: 85px;
            margin: 0 auto 25px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 25px;
            color: white;
            font-size: 43px;
            background: linear-gradient(135deg, #e11d48, #9333ea);
            box-shadow: 0 10px 25px rgba(225,29,72,.2);
        }

        .codigo {
            font-size: 105px;
            font-weight: 900;
            line-height: 1;
            letter-spacing: -7px;
            margin-bottom: 20px;
            background: linear-gradient(120deg, #e11d48, #9333ea);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        h2 {
            color: #1e293b;
            font-size: 28px;
            margin-bottom: 15px;
        }

        p {
            color: #64748b;
            font-size: 14px;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .btn-inicio {
            display: inline-block;
            padding: 14px 25px;
            border-radius: 11px;
            text-decoration: none;
            color: white;
            font-size: 14px;
            font-weight: 700;
            background: linear-gradient(110deg, #e11d48, #9333ea);
            transition: .3s;
        }

        .btn-inicio:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(225,29,72,.25);
        }

        .texto-inferior {
            margin-top: 30px;
            margin-bottom: 0;
            font-size: 12px;
            color: #94a3b8;
        }

        @media (max-width: 480px) {
            .contenedor-error {
                padding: 40px 22px;
            }

            .codigo {
                font-size: 82px;
            }

            h2 {
                font-size: 23px;
            }
        }
    </style>
</head>

<body>

    <div class="contenedor-error">

        <div class="icono-error">
            !
        </div>

        <div class="codigo">
            403
        </div>

        <h2>¡Acceso denegado!</h2>

        <p>
            Lo sentimos, no tienes los permisos necesarios
            para acceder a esta sección de la plataforma.

            <br><br>

            Puedes regresar al inicio y continuar
            navegando por las opciones disponibles para tu cuenta.
        </p>

        <a href="/" class="btn-inicio">
            ← Volver al inicio
        </a>

        <p class="texto-inferior">
            Mi Portal · Seguridad y gestión de usuarios
        </p>

    </div>

</body>
</html>
