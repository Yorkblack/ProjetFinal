package Servlets;

import Beans.Animal;
import Beans.AnimalDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Europe", value = "/Europe")
public class Europe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnimalDAO dao = new AnimalDAO();
        dao.initialisation();
        List<Animal> animaux =dao.affichageAnimal("select * from canidae where zoneDeVie =\"Europe\" or zone2 =\"Europe\";");
        request.setAttribute("liste",animaux);
        dao.cloture();
        this.getServletContext().getRequestDispatcher("/europe.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
