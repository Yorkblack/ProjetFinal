package Servlets;

import Beans.Animal;
import Beans.AnimalDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AmeriqueDuS", value = "/AmeriqueDuS")
public class AmeriqueDuS extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnimalDAO dao = new AnimalDAO();
        dao.initialisation();
        List<Animal> animaux =dao.affichageAnimal("select * from canidae where zoneDeVie =\"Amerique du sud\" or zone2 =\"Amerique du sud\";");
        String desc="";
        for (Animal a:animaux){
            desc+=a+"\n";
        }
        request.setAttribute("liste",desc);
        dao.cloture();
        this.getServletContext().getRequestDispatcher("/ameriqueDuS.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
