<%@ page import="usuario.Usuario" %>
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
<%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
  response.setHeader("Pragma", "no-cache"); // HTTP 1.0
  response.setDateHeader("Expires", 0); // Desactiva caché en proxies

  // Verificar si el usuario está logueado
  Usuario usuario = (Usuario) session.getAttribute("usuario");
  if (usuario == null) {
    response.sendRedirect("login.jsp"); // Redirige al login si no hay sesión
    return;
  }
%>

<!-- Menú de navegación -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand font-weight-bold text-white" href="#">
        <%= usuario.getRol().getDescripcion() %>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-white" href="home.jsp">Inicio</a>
            </li>
            <% if("admin".equalsIgnoreCase(usuario.getRol().getDescripcion())) { %>
            <li class="nav-item">
                <a class="nav-link text-white" href="perfil.jsp">Perfil del Usuario</a>
            </li>
            <% } %>
            <li class="nav-item">
                <a class="nav-link text-white" href="info/info1.jsp">Info</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="menuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Menú
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="RangersServlet">Rangers</a>
                    <a class="dropdown-item" href="ZordsServlet">Zords</a>
                    <a class="dropdown-item" href="TemporadasServlet">Temporadas</a>
                    <a class="dropdown-item" href="EpisodiosServlet">Episodios</a>
                    <a class="dropdown-item" href="VillanosServlet">Villanos</a>
                </div>
            </li>
        </ul>
        <!-- Formulario de búsqueda -->
        <form class="form-inline search-box ml-auto" method="GET" action="home.jsp">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Buscar..." aria-label="Buscar">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Buscar</button>
            <a href="LogoutServlet" class="btn btn-danger ml-2">Cerrar Sesión</a>
        </form>

        <%
            // Obtener el parámetro 'search' del formulario
            String search = request.getParameter("search");
            if (search != null) {
                switch (search.toLowerCase()) {
                    case "imagenes":
                        response.sendRedirect("imagenes.jsp");
                        break;
                    // Puedes añadir más casos aquí para otras palabras clave
                    default:
                        // Mostrar un mensaje si la búsqueda no coincide con ninguna opción
                        System.out.println("<div class='alert alert-warning mt-3' role='alert'>No se encontró la página para la búsqueda: " + search + "</div>");
                }
            }
        %>
    </div>
</nav>


<!-- Cuadro informativo de opciones de búsqueda -->
<div class="container">
  <div class="info-box text-right float-right">
    <p>
      <strong>
        <a href="#searchOptions" data-toggle="collapse" aria-expanded="false" aria-controls="searchOptions" style="text-decoration: none;">
          Opciones de búsqueda
        </a>
      </strong>
    </p>
    <div id="searchOptions" class="collapse">
      <p>Escribe una de las siguientes palabras para navegar rápidamente:</p>
      <ul class="list-unstyled">
          <li><strong>imagenes</strong> - Redirige a la página de imagenes</li>
      </ul>
    </div>
  </div>
</div>

<div class="container text-center mt-4">
  <img src="images/Mighty_Morphin_Logo.webp" alt="Mighty Morphin Logo" class="img-fluid mb-3" style="width:300px; height:auto;">
  <h1>Esta es la sección principal donde puedes explorar las temporadas.</h1>
  <p>La primera temporada de Power Rangers se llamó Mighty Morphin Power Rangers y se emitió por primera vez el 28 de agosto de 1993. La temporada finalizó el 27 de noviembre de 1995.</p>
  <!-- Video centrado -->
  <div class="embed-responsive embed-responsive-16by9 mt-3">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/nHalaFUqnTI" title="Mighty Morphin Season 1 - Official Opening Theme and Theme Song | Power Rangers Official" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
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
  <div class="text-center p-3" style="background-color: #e9ecef;">
    © 2024 Power Rangers Fan App. Todos los derechos reservados.
  </div>
</footer>

</html>


