package Beans;

import java.util.List;

public class Main {

    public static void main(String[] args){

        AnimalDAO dao = new AnimalDAO();
        dao.initialisation();
        List<Animal> animaux =dao.affichageAnimal("SELECT * FROM canidae");
        for (Animal a:animaux){
            System.out.println(a);
        }

    }
}