package com.mantenedor;

import db.DatabaseConnection; // Importar tu clase DatabaseConnection
import temporada.Temporada;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;

@WebServlet("/TemporadasServlet")
public class TemporadasServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Temporada> temporadasList = new ArrayList<>();

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM TEMPORADA")) {

            // Recorre el ResultSet y crea objetos Temporada
            while (rs.next()) {
                Temporada temporada = new Temporada();
                temporada.setCodTemp(rs.getInt("codTemp"));
                temporada.setCodEpisodio(rs.getInt("codEpisodio"));
                temporada.setCodVillano(rs.getInt("codVillano"));
                temporada.setCodEquipo(rs.getInt("codEquipo"));
                temporada.setTituloTemp(rs.getString("tituloTemp"));
                temporada.setNroTemp(rs.getInt("nroTemp"));
                temporada.setFechaEstreno(rs.getDate("fechaEstreno"));
                temporada.setNroEpisodios(rs.getInt("nroEpisodios"));
                temporada.setTematicaTemp(rs.getString("tematicaTemp"));
                temporada.setCorreoUsuario(rs.getString("correoUsuario"));

                // Verifica si el valor de numeroVisita es NULL
                int numeroVisita = rs.getInt("numeroVisita");
                temporada.setNumeroVisita(rs.wasNull() ? 0 : numeroVisita); // Asigna 0 si es NULL

                temporadasList.add(temporada);
            }

            // Pasa los datos a la página JSP
            request.setAttribute("temporadas", temporadasList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirige a la página temporadas.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("menu/temporadas.jsp");
        dispatcher.forward(request, response);
    }
}
