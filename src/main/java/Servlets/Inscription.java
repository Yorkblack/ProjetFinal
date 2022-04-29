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

        UtilisateurDAO dao = new UtilisateurDAO();
        dao.initialisation();

        if (dao.checkPseudoExist(pseudo)==true) {
            System.out.println("le pseudo existe");
            this.getServletContext().getRequestDispatcher("/echecInscription.jsp").forward(request, response);
            return;
        }
        if (dao.checkMailExist(courriel)==true)
        {
            System.out.println("le mail existe");
            this.getServletContext().getRequestDispatcher("/echecInscription.jsp").forward(request, response);
            return;
        }

        List<Utilisateur> utilisateurs=dao.affichageUtilisateurs();



        Utilisateur u = new Utilisateur(pseudo, courriel,password);
        dao.nouvelUtilisateur(u);

        for (Utilisateur a:utilisateurs) System.out.println(a);
        dao.cloture();
        this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
