<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="css/styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<header>
    <h1>Iniciar Sesión</h1>
</header>

<section class="login" action="/login" method="POST">
    <h2>Bienvenido de nuevo</h2>
    <form id="loginForm">
        <label for="email">Correo electrónico:</label>
        <input type="email" id="email" name="email" required>
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Iniciar Sesión" class="btn-submit">
    </form>
    <p id="message"></p>
</section>

<footer>
    <p>© 2024 - Página de Power Rangers</p>
</footer>
<script>
    $(document).ready(function() {
        $('#loginForm').submit(function(event) {
            event.preventDefault(); // Evitar que el formulario recargue la página
            var email = $('#email').val();
            var password = $('#password').val();

            $.ajax({
                url: '/login', // La URL que apunta al backend que creaste
                method: 'POST',
                data: { email: email, password: password },
                success: function(response) {
                    if(response === 'success') {
                        window.location.href = 'index.html'; // Redirecciona si es exitoso
                    } else {
                        alert('Email o contraseña incorrectos');
                    }
                },
                error: function() {
                    alert('Error al intentar iniciar sesión');
                }
            });
        });
    });
</script>
</body>
</html>
