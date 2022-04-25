package Servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Inscription", value = "/Inscription")
public class Inscription extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pseudo = request.getParameter("user");
        String courriel=request.getParameter("mail");
        String password=request.getParameter("mdp");

        request.setAttribute("utilisateur", pseudo);
        request.setAttribute("email", courriel);
        request.setAttribute("password", password);



        this.getServletContext().getRequestDispatcher("/affichageValeurs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
