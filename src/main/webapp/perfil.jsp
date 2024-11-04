<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Perfil del Usuario</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .profile-container {
      max-width: 600px;
      margin: 50px auto;
      padding: 20px;
      background-color: #f8f9fa;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .profile-img {
      width: 150px;
      height: 150px;
      object-fit: cover;
      border-radius: 50%;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="profile-container text-center">

    <img src="images/Perfil1.png" alt="Perfil1" class="profile-img img-fluid">

    <h2>Nombre del Usuario</h2>
    <p class="text-muted">usuario@correo.cl</p>

    <p>Fanático de los Power Rangers desde sus inicios</p>

    <a href="editarPerfil.jsp" class="btn btn-primary mt-3">Editar Perfil</a>


    <a href="home.jsp" class="btn btn-secondary mt-3">Volver al Inicio</a>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
