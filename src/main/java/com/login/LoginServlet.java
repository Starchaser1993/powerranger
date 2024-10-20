package com.login;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Lógica de validación de usuario
        if (isValidUser(email, password)) {
            // Si las credenciales son válidas, redirigir a la página de inicio
            response.sendRedirect("home.jsp");
        } else {
            // Si las credenciales son inválidas, redirigir de vuelta a login.jsp con un mensaje de error
            request.setAttribute("errorMessage", "Credenciales inválidas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private boolean isValidUser(String email, String password) {
        // Lógica de autenticación. Aquí puedes conectar con una base de datos para validar el usuario.
        // Este es un ejemplo simple; deberías reemplazarlo con tu lógica real.

        // Ejemplo de credenciales válidas (esto solo es para propósitos de demostración)
        return "test@example.com".equals(email) && "password123".equals(password);
    }
}
