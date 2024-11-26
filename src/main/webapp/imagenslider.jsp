<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    // Parámetro que identifica la temporada (codEquipo)
    String codEquipoParam = request.getParameter("codEquipo");
    int codEquipo = (codEquipoParam != null) ? Integer.parseInt(codEquipoParam) : 1; // Default to 1 if no codEquipo provided

    // Variables para la conexión a la base de datos
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String jdbcUrl = "jdbc:mysql://localhost:1433/PowerRangers";
    String jdbcUser = "SA";
    String jdbcPassword = "Elgatoloco3514.";

    // Variable para almacenar la URL de la primera imagen
    String fotoUrl = null;

    try {
        // Establecer conexión con la base de datos
        conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);

        // Consulta SQL para obtener la primera foto asociada con la temporada (codEquipo)
        String sql = "SELECT urlFoto FROM Foto WHERE codEquipo = ? LIMIT 1";
        stmt = conn.prepareStatement(sql);
        stmt.setInt(1, codEquipo);

        // Ejecutar la consulta
        rs = stmt.executeQuery();

        // Obtener la URL de la primera imagen, si existe
        if (rs.next()) {
            fotoUrl = rs.getString("urlFoto");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Cerrar recursos de la base de datos
        if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>

<!-- Mostrar la imagen si existe -->
<div id="slider-temporada-<%= codEquipo %>" class="slider-container text-center">
    <h3 class="my-4">Temporada <%= codEquipo %></h3>
    <%
        if (fotoUrl != null) {
    %>
    <img src="<%= fotoUrl %>" alt="Imagen de Temporada <%= codEquipo %>" class="img-fluid" style="max-width: 600px;">
    <%
    } else {
    %>
    <p>No hay imágenes disponibles para esta temporada.</p>
    <%
        }
    %>
</div>
