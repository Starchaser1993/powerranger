package com.mantenedor;

import db.DatabaseConnection; // Importa tu clase DatabaseConnection
import personaje.Villano; // Importa tu clase Villano
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;

@WebServlet("/VillanosServlet")
public class VillanosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Villano> villanosList = new ArrayList<>();

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM VILLANO")) {

            // Recorre el ResultSet y crea objetos Villano
            while (rs.next()) {
                Villano villano = new Villano();
                villano.setCodVillano(rs.getInt("codVillano"));
                villano.setCodTemp(rs.getInt("codTemp"));
                villano.setCodEquipo(rs.getInt("codEquipo"));
                villano.setNombreVil(rs.getString("nombreVil"));
                villano.setTipoVil(rs.getString("tipoVil"));
                villano.setEpiDebut(rs.getInt("epiDebut"));
                villano.setArmaVil(rs.getString("armaVil"));
                villano.setCategoriaVil(rs.getString("categoriaVil"));
                villano.setCorreoUsuario(rs.getString("correoUsuario"));

                villanosList.add(villano);
            }

            // Pasa los datos a la página JSP
            request.setAttribute("villanos", villanosList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirige a la página villanos.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("menu/villanos.jsp");
        dispatcher.forward(request, response);
    }
}

