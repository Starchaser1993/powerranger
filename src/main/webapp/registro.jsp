<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

<div class="container">
    <div class="login-container">
        <h2 class="text-center">Registro</h2>
        <form action="procesarLogin" method="post">

            <div class="form-group">
                <label for="correoUsuario">Correo Electrónico</label>
                <input type="email" class="form-control" id="correoUsuario" name="correoUsuario" placeholder="Ingrese su correo electrónico" required>
            </div>

            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Ingrese su contraseña" required>
            </div>

        </form>

        <div class="text-center mt-3">
            <p>Bienvenido</p>
            <a href="registro.jsp" class="btn btn-secondary">Registrarse</a>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
