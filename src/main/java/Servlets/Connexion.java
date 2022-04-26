package Servlets;

import Beans.Utilisateur;
import Beans.UtilisateurDAO;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Connexion", value = "/Connexion")
public class Connexion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courriel = request.getParameter("mail");
        String password = request.getParameter("mdp");

        request.setAttribute("email", courriel);
        request.setAttribute("password", password);

        UtilisateurDAO dao = new UtilisateurDAO();
        dao.initialisation();
        if (dao.mailEtMdpCorrects(courriel, password) == true) System.out.println("Identifiants valides");
        else System.out.println("Identifiants non valides");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
