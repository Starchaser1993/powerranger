<%@ page import="personaje.Villano" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Villanos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #d5f5e3;
            height: 100vh;
            color: black;
        }

        h1 {
            color: black;
        }

        table, th, td {
            color: black;
        }

        .container {
            position: relative;
            z-index: 1;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">Volver</button>
</div>
<div class="container mt-4">
    <h1>Lista de Villanos</h1>

    <!-- Botón para crear un nuevo villano -->
    <div class="mb-3">
        <a href="crearVillano.jsp" class="btn btn-primary">Crear Nuevo Villano</a>
    </div>

    <!-- Tabla con los datos de los villanos -->
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Código Villano</th>
            <th>Código Temporada</th>
            <th>Código Equipo</th>
            <th>Nombre del Villano</th>
            <th>Tipo de Villano</th>
            <th>Episodio de Debut</th>
            <th>Arma del Villano</th>
            <th>Categoría del Villano</th>
            <th>Correo del Usuario</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Villano> villanos = (List<Villano>) request.getAttribute("villanos");
            if (villanos != null && !villanos.isEmpty()) {
                for (Villano villano : villanos) {
        %>
        <tr>
            <td><%= villano.getCodVillano() %></td>
            <td><%= villano.getCodTemp() %></td>
            <td><%= villano.getCodEquipo() %></td>
            <td><%= villano.getNombreVil() %></td>
            <td><%= villano.getTipoVil() %></td>
            <td><%= villano.getEpiDebut() %></td>
            <td><%= villano.getArmaVil() %></td>
            <td><%= villano.getCategoriaVil() %></td>
            <td><%= villano.getCorreoUsuario() %></td>
            <td>
                <!-- Enlaces para editar y eliminar -->
                <a href="editarVillano.jsp?codVillano=<%= villano.getCodVillano() %>" class="btn btn-success btn-sm">Editar</a>
                <a href="eliminarVillano?codVillano=<%= villano.getCodVillano() %>" class="btn btn-danger btn-sm" onclick="return confirm('¿Estás seguro de que deseas eliminar este villano?');">Eliminar</a>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="10">No hay villanos disponibles</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
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

