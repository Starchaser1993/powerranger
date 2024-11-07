package com.login;

import db.DatabaseConnection;
import db.SSLUtil;
import usuario.Rol;
import usuario.Usuario;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SSLUtil.disableSSLValidation();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Usuario usuario = new Usuario();

        // Validación de usuario
        if (isValidUser(email, password, usuario)) {
            // Obtener la conexión a la base de datos
            try (Connection conn = DatabaseConnection.getConnection()) {
                // Consulta para obtener el rol del usuario
                String rolQuery = "SELECT ROL.* FROM USUARIO " +
                        "JOIN ROL ON USUARIO.codRol = ROL.codRol " +
                        "WHERE correoUsuario = ?";
                PreparedStatement rolStmt = conn.prepareStatement(rolQuery);
                rolStmt.setString(1, email);
                ResultSet rolRs = rolStmt.executeQuery();

                if (rolRs.next()) {

                    String userRole = rolRs.getString("descripcion");
                    int codRol = rolRs.getInt("codRol");
                    Rol rol = new Rol();
                    rol.setCodRol(codRol);
                    rol.setDescripcion(userRole);
                    usuario.setRol(rol);

                    // Guardar rol en la sesión
                    HttpSession session = request.getSession();
                    session.setAttribute("usuario", usuario);
                    response.sendRedirect("home.jsp"); // Redirigir a la página de inicio
                } else {
                    // Si no se encuentra el rol, mostrar error
                    request.setAttribute("errorMessage", "Rol no asignado al usuario.");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            // Redirigir de vuelta a login.jsp con un mensaje de error
            request.setAttribute("errorMessage", "Credenciales inválidas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private boolean isValidUser(String email, String password, Usuario usuario ) {
        boolean isValid = false;
        try (Connection conn = DatabaseConnection.getConnection()) {
            String query = "SELECT * FROM USUARIO WHERE correoUsuario = ? AND password = ?";

            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String correoUsuario = rs.getString("correoUsuario");
                String passwordUsuario = rs.getString("password");
                int codRol = rs.getInt("codRol");
                usuario.setCorreoUsuario(correoUsuario);
                usuario.setPassword(passwordUsuario);

                isValid = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isValid;
    }
}

