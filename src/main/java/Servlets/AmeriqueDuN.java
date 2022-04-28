package Servlets;

import Beans.Animal;
import Beans.AnimalDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AmeriqueDuN", value = "/AmeriqueDuN")
public class AmeriqueDuN extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnimalDAO dao = new AnimalDAO();
        dao.initialisation();
        List<Animal> animaux =dao.affichageAnimal("select * from canidae where zoneDeVie =\"Amerique du nord\" or zone2 =\"Amerique du nord\";");
        String desc="";
        for (Animal a:animaux){
            desc+=a+"\n";
        }
        request.setAttribute("liste",desc);
        this.getServletContext().getRequestDispatcher("/ameriqueDuN.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
