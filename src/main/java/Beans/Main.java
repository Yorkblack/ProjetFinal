package Beans;

import java.util.List;

public class Main {

    public static void main(String[] args){

        AnimalDAO dao = new AnimalDAO();
        dao.initialisation();
        String desc="";
        List<Animal> animaux =dao.affichageAnimal("select * from canidae where zoneDeVie =\"Amerique du nord\" or zone2 =\"Amerique du nord\";");
        for (Animal a:animaux){
            desc+=a+"\n";
        }
        System.out.println(desc);

    }
}