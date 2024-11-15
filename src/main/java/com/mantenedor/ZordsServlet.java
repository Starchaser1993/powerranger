package com.mantenedor;

import db.DatabaseConnection; // Importa tu clase DatabaseConnection
import personaje.Zord; // Importa tu clase Zord
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;

@WebServlet("/ZordsServlet")
public class ZordsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Zord> zordsList = new ArrayList<>();

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM ZORD")) {

            // Recorre el ResultSet y crea objetos Zord
            while (rs.next()) {
                Zord zord = new Zord();
                zord.setCodZord(rs.getInt("codZord"));
                zord.setCodRanger(rs.getInt("codRanger"));
                zord.setNombreZord(rs.getString("nombreZord"));
                zord.setTipoZord(rs.getString("tipoZord"));
                zord.setCategoriaZord(rs.getString("categoriaZord"));
                zord.setCorreoUsuario(rs.getString("correoUsuario"));

                zordsList.add(zord);
            }

            // Pasa los datos a la página JSP
            request.setAttribute("zords", zordsList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Redirige a la página zords.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("menu/zords.jsp");
        dispatcher.forward(request, response);
    }
}

