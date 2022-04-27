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

        UtilisateurDAO dao = new UtilisateurDAO();
        dao.initialisation();
        if (dao.mailEtMdpCorrects(courriel, password) == true) {
            System.out.println("Identifiants  valides");
            Utilisateur currentUser=new Utilisateur();
            currentUser=dao.trouveUtilisateur(courriel);

            //Création de session et mise en attributs des données utilisateurs
            HttpSession session= request.getSession();
            session.setAttribute("pseudo", currentUser.getPseudo());
            session.setAttribute("mail",currentUser.getMail());
            session.setAttribute("mdp",currentUser.getPassword());

            //Création de cookies
            setCookie(response, "pseudo", currentUser.getPseudo(), 3600); //Durée de vie du cookie set à 1h, à modifier à terme
            setCookie(response, "mail", currentUser.getMail(), 3600); //Durée de vie du cookie set à 1h, à modifier à terme
            setCookie(response, "mdp", currentUser.getPassword(), 3600); //Durée de vie du cookie set à 1h, à modifier à terme



        } else System.out.println("Identifiants non valides");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    private static void setCookie (HttpServletResponse response, String nom, String valeur, int maxAge){
        Cookie cookie = new Cookie (nom,valeur);
        cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
    }
}
