<%@ page import="personaje.Zord" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zords</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Configuración para el color de fondo */
        body {
            background-color: #d5f5e3; /* Color de fondo verde claro */
            height: 100vh; /* Asegura que cubra toda la altura de la ventana */
            color: white; /* Hace el texto blanco para que se vea mejor en el fondo rosa */
        }

        .container {
            position: relative; /* Asegura que el contenido esté por encima del fondo */
            z-index: 1;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Fondo blanco semitransparente para el contenido */
            border-radius: 10px; /* Bordes redondeados */
        }

        /* Estilo para cambiar el color del encabezado */
        h1 {
            color: black; /* Cambia el color del texto del encabezado a negro */
        }

        /* Estilos para la tabla */
        table, th, td {
            color: black; /* Cambia el color de texto dentro de la tabla a negro */
        }
    </style>
</head>
<body>

<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">Volver</button>
</div>

<div class="container mt-4">
    <h1>Lista de Zords</h1>

    <!-- Tabla con los datos de los Zords -->
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Código Zord</th>
            <th>Código Ranger</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Categoría</th>
            <th>Correo del Usuario</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Zord> zords = (List<Zord>) request.getAttribute("zords");
            if (zords != null && !zords.isEmpty()) {
                for (Zord zord : zords) {
        %>
        <tr>
            <td><%= zord.getCodZord() %></td>
            <td><%= zord.getCodRanger() %></td>
            <td><%= zord.getNombreZord() %></td>
            <td><%= zord.getTipoZord() %></td>
            <td><%= zord.getCategoriaZord() %></td>
            <td><%= zord.getCorreoUsuario() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6">No hay Zords disponibles</td>
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





