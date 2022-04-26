package Servlets;

import Beans.Utilisateur;
import Beans.UtilisateurDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

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
        Utilisateur u = new Utilisateur(pseudo, courriel,password);
        UtilisateurDAO dao = new UtilisateurDAO();
        dao.initialisation();
        dao.nouvelUtilisateur(u);
        List<Utilisateur> utilisateurs=dao.affichageUtilisateurs();
        for (Utilisateur a:utilisateurs) System.out.println(a);
        dao.cloture();



        this.getServletContext().getRequestDispatcher("/affichageValeurs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
