<%@ page import="temporada.Episodio" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Episodios</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Configuración para el color de fondo */
        body {
            background-color: #d5f5e3; /* Color de fondo verde claro */
            height: 100vh; /* Asegura que cubra toda la altura de la ventana */
            color: black; /* Hace el texto negro para que se vea mejor en el fondo rosado */
        }

        h1 {
            color: black; /* Cambia el color del texto del encabezado a negro */
        }

        /* Estilos para la tabla */
        table, th, td {
            color: black; /* Cambia el color de texto dentro de la tabla a negro */
        }

        .container {
            position: relative; /* Asegura que el contenido esté por encima del fondo */
            z-index: 1;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Fondo blanco semitransparente para el contenido */
            border-radius: 10px; /* Bordes redondeados */
        }
    </style>
</head>
<body>
<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">Volver</button>
</div>
<div class="container mt-4">
    <h1>Lista de Episodios</h1>

    <!-- Tabla con los datos de los episodios -->
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Código Episodio</th>
            <th>Código Temporada</th>
            <th>Título del Episodio</th>
            <th>Número de Episodio</th>
            <th>Fecha de Emisión</th>
            <th>Correo del Usuario</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Episodio> episodios = (List<Episodio>) request.getAttribute("episodios");
            if (episodios != null && !episodios.isEmpty()) {
                for (Episodio episodio : episodios) {
        %>
        <tr>
            <td><%= episodio.getCodEpisodio() %></td>
            <td><%= episodio.getCodTemp() %></td>
            <td><%= episodio.getTituloEp() %></td>
            <td><%= episodio.getNroEp() %></td>
            <td><%= episodio.getFechaEmi() %></td>
            <td><%= episodio.getCorreoUsuario() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6">No hay episodios disponibles</td>
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
</html>


