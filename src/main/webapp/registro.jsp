<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f2f2f2;
        }
        .login-container {
            max-width: 450px;
            margin: 60px auto;
            padding: 30px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        footer {
            background-color: #343a40;
            color: #fff;
        }
        footer a {
            color: #ffc107;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<!-- Botón Volver -->
<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary ml-3">← Volver</button>
</div>

<!-- Formulario de Registro -->
<div class="container">
    <div class="login-container">
        <h2 class="text-center">Crear una Cuenta</h2>
        <form action="procesarLogin" method="post">

            <!-- Campo Correo Electrónico -->
            <div class="form-group">
                <label for="correoUsuario">Correo Electrónico</label>
                <input type="email"
                       class="form-control"
                       id="correoUsuario"
                       name="correoUsuario"
                       placeholder="ejemplo@correo.com"
                       required
                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
                <small class="form-text text-muted">Tu correo será usado para iniciar sesión.</small>
            </div>

            <!-- Campo Contraseña -->
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password"
                       class="form-control"
                       id="password"
                       name="password"
                       placeholder="Crea una contraseña segura"
                       required
                       minlength="6">
                <small class="form-text text-muted">Mínimo 6 caracteres.</small>
            </div>

           
            <button type="submit" class="btn btn-primary btn-block">Registrar</button>
        </form>


        <div class="text-center mt-3">
            <p class="text-muted">¿Ya tienes una cuenta? <a href="login.jsp">Inicia sesión</a>.</p>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<footer class="text-center text-lg-start mt-5">
    <div class="p-3">
        <p class="mb-0">© 2024 Power Rangers Fan App. Todos los derechos reservados.</p>
        <small>Consulta nuestras <a href="terminos.jsp">políticas de buena conducta</a>.</small>
    </div>
</footer>

</body>
</html>

