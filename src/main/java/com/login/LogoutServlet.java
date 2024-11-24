package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtiene la sesión actual y la invalida (cierra sesión)
        HttpSession session = request.getSession(false); // false evita crear una nueva sesión si no existe
        if (session != null) {
            session.invalidate(); // Invalida la sesión existente
        }

        // Desactiva la caché del navegador para evitar que el usuario vea páginas anteriores
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0
        response.setDateHeader("Expires", 0); // Proxies

        // Redirige al usuario a la página de inicio de sesión u otra página deseada
        response.sendRedirect("login.jsp");
    }
}
