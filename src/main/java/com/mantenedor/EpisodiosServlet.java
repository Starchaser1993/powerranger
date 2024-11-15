package com.mantenedor;

import db.DatabaseConnection; // Importar tu clase DatabaseConnection
import temporada.Episodio; // Importar tu clase Episodio
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;

@WebServlet("/EpisodiosServlet")
public class EpisodiosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Episodio> episodiosList = new ArrayList<>();

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM EPISODIO")) {

            // Recorre el ResultSet y crea objetos Episodio
            while (rs.next()) {
                Episodio episodio = new Episodio();
                episodio.setCodEpisodio(rs.getInt("codEpisodio"));
                episodio.setCodTemp(rs.getInt("codTemp"));
                episodio.setTituloEp(rs.getString("tituloEp"));
                episodio.setNroEp(rs.getInt("nroEp"));
                episodio.setFechaEmi(rs.getDate("fechaEmi"));
                episodio.setCorreoUsuario(rs.getString("correoUsuario"));

                episodiosList.add(episodio);
            }

            // Pasa los datos a la página JSP
            request.setAttribute("episodios", episodiosList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirige a la página episodios.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("menu/episodios.jsp");
        dispatcher.forward(request, response);
    }
}
