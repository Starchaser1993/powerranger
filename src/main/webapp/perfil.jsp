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

<div class="mt-3">
  <button onclick="window.history.back();" class="btn btn-secondary">← Volver</button>
</div>

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

<footer class="bg-light text-center text-lg-start mt-5">
  <div class="container p-4">
    <div class="row">
      <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
        <h5 class="text-uppercase">Sobre la aplicación</h5>
        <p>
          Esta es una aplicación de exploración de Power Rangers, donde puedes encontrar información sobre episodios, temporadas, rangers, villanos y zords.
        </p>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase">Enlaces útiles</h5>
        <ul class="list-unstyled mb-0">
          <li><a href="home.jsp" class="text-dark">Inicio</a></li>
          <li><a href="RangersServlet" class="text-dark">Rangers</a></li>
          <li><a href="ZordsServlet" class="text-dark">Zords</a></li>
          <li><a href="VillanosServlet" class="text-dark">Villanos</a></li>
        </ul>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
        <h5 class="text-uppercase">Contacto</h5>
        <p>Email: contacto@powerrangers.com</p>
        <p>Teléfono: +56 9 1234 5678</p>
      </div>
    </div>
  </div>
  <p class="mb-0">© 2024 Power Rangers Fan App. Todos los derechos reservados.</p>
  <small>Consulta nuestras <a href="terminos.jsp">políticas de buena conducta</a>.</small>
</footer>

</html>
