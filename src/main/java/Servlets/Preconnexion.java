package Servlets;

import Beans.Utilisateur;
import Beans.UtilisateurDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Preconnexion", value = "/Preconnexion")
public class Preconnexion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courriel=getCookieValue(request, "mail");
        String password=getCookieValue(request, "mdp");
        System.out.println(courriel);
        System.out.println(password);
        UtilisateurDAO dao = new UtilisateurDAO();
        dao.initialisation();
        if (dao.mailEtMdpCorrects(courriel, password) == true) {
            System.out.println("Identifiants  valides");
            Utilisateur currentUser = new Utilisateur();
            currentUser = dao.trouveUtilisateur(courriel);

            //Création de session et mise en attributs des données utilisateurs
            HttpSession session = request.getSession();
            session.setAttribute("pseudo", currentUser.getPseudo());
            System.out.println(session.getAttribute("pseudo"));
            session.setAttribute("mail", currentUser.getMail());
            session.setAttribute("mdp", currentUser.getPassword());

            dao.cloture();

            this.getServletContext().getRequestDispatcher("/connexionReussie.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/connexion.jsp").forward(request, response);

        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    private static String getCookieValue(HttpServletRequest request, String nom) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie != null && nom.equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
}
