<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Info 2</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="info1.jsp">Previous</a></li>
        <li class="page-item"><a class="page-link" href="info1.jsp">1</a></li>
        <li class="page-item"><a class="page-link" href="info2.jsp">2</a></li>
        <li class="page-item"><a class="page-link" href="info3.jsp">3</a></li>
        <li class="page-item"><a class="page-link" href="info3.jsp">Next</a></li>
    </ul>
</nav>
<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">← Volver</button>
</div>
<div class="container mt-4">
    <div class="row">
        <% for (int i = 10; i <= 18; i++) { %>
        <div class="col-md-4 mb-4">
            <div class="card" style="width: 18rem;">
                <img src="https://via.placeholder.com/150" class="card-img-top" alt="Placeholder Image">
                <div class="card-body">
                    <h5 class="card-title">Card title <%= i %></h5>
                    <p class="card-text">Some quick example text for card <%= i %>.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="info2.jsp">Previous</a></li>
        <li class="page-item"><a class="page-link" href="info1.jsp">1</a></li>
        <li class="page-item"><a class="page-link" href="info2.jsp">2</a></li>
        <li class="page-item"><a class="page-link" href="info3.jsp">3</a></li>
        <li class="page-item"><a class="page-link" href="info1.jsp">Next</a></li>
    </ul>
</nav>
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
        <p class="mb-0">© 2024 Power Rangers Fan App. Todos los derechos reservados.</p>
        <small>Consulta nuestras <a href="terminos.jsp">políticas de buena conducta</a>.</small>
    </div>
</footer>
</html>

