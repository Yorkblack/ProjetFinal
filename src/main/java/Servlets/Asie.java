package Servlets;

import Beans.Animal;
import Beans.AnimalDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Asie", value = "/Asie")
public class Asie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnimalDAO dao = new AnimalDAO();
        dao.initialisation();
        List<Animal> animaux =dao.affichageAnimal("select * from canidae where zoneDeVie =\"Asie\" or zone2 =\"Asie\";");
        String desc="";
        for (Animal a:animaux){
            desc+=a+"\n";
        }
        request.setAttribute("liste",desc);
        dao.cloture();
        this.getServletContext().getRequestDispatcher("/asie.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
