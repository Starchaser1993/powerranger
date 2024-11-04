<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar Perfil</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .edit-profile-container {
      max-width: 600px;
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
  <div class="edit-profile-container">
    <h2 class="text-center">Editar Perfil</h2>

    <!-- Formulario de edición de perfil -->
    <form action="ActualizarPerfilServlet" method="post">
      <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingresa tu nombre" required>
      </div>

      <div class="form-group">
        <label for="correo">Correo Electrónico</label>
        <input type="email" class="form-control" id="correo" name="correo" placeholder="Ingresa tu correo" required>
      </div>

      <div class="form-group">
        <label for="biografia">Biografía</label>
        <textarea class="form-control" id="biografia" name="biografia" rows="3" placeholder="Ingresa una breve biografía"></textarea>
      </div>

      <!-- Botones de acción -->
      <button type="submit" class="btn btn-primary btn-block">Guardar Cambios</button>
      <a href="perfil.jsp" class="btn btn-secondary btn-block">Cancelar</a>
    </form>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
