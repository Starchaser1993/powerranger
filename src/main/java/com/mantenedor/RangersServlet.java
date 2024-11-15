package com.mantenedor;

import db.DatabaseConnection; // Importa tu clase DatabaseConnection
import personaje.Ranger; // Importa tu clase Ranger
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;

@WebServlet("/RangersServlet")
public class RangersServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Ranger> rangersList = new ArrayList<>();

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM RANGER")) {

            // Recorre el ResultSet y crea objetos Ranger
            while (rs.next()) {
                Ranger ranger = new Ranger();
                ranger.setCodRanger(rs.getInt("codRanger"));
                ranger.setCodZord(rs.getInt("codZord"));
                ranger.setCodEquipo(rs.getInt("codEquipo"));
                ranger.setNombreRan(rs.getString("nombreRan"));
                ranger.setColorRan(rs.getString("colorRan"));
                ranger.setPoderRan(rs.getString("poderRan"));
                ranger.setActorRan(rs.getString("actorRan"));
                ranger.setArmaRan(rs.getString("armaRan"));
                ranger.setMorpher(rs.getString("morpher"));
                ranger.setCategoriaRan(rs.getString("categoriaRan"));
                ranger.setCorreoUsuario(rs.getString("correoUsuario"));
                ranger.setCodColor(rs.getInt("codColor"));

                rangersList.add(ranger);
            }

            // Pasa los datos a la página JSP
            request.setAttribute("rangers", rangersList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirige a la página rangers.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("menu/rangers.jsp");
        dispatcher.forward(request, response);
    }
}

