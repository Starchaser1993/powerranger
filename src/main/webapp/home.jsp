<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Página de Inicio</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .search-box {
      margin-left: auto;
      margin-right: 15px;
    }
  </style>
</head>
<body>

<!-- Menú de navegación -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Nombre del usuario</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="home.jsp">Inicio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="perfil.jsp">Perfil del Usuario</a>
      </li>
    </ul>
    <form class="form-inline search-box">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar temporadas" aria-label="Buscar">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>

<div class="container text-center mt-4">

  <img src="images/Mighty_Morphin_Logo.webp" alt="Mighty Morphin Logo" class="img-fluid mb-3" style="width:300px; height:auto;">


  <h1>Esta es la sección principal donde puedes explorar las temporadas.</h1>
  <p>La primera temporada de Power Rangers se llamó Mighty Morphin Power Rangers
    y se emitió por primera vez el 28 de agosto de 1993. La temporada finalizó el
    27 de noviembre de 1995.</p>

  <!-- Video centrado -->
  <div class="embed-responsive embed-responsive-16by9 mt-3">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/nHalaFUqnTI" title="Mighty Morphin Season 1 - Official Opening Theme and Theme Song | Power Rangers Official" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>



