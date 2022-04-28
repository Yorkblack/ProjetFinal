package Beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AnimalDAO {

    private Connection connexion = null;

    public void initialisation() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");

            //Identifiants
            String nomUtilisateur = "root";
            String motDePasse = "pass";
            String nomBase = "projetfinal";

            //Préparation
            String connec = "jdbc:mariadb://localhost:3306/";
            connec += nomBase + "?user=" + nomUtilisateur;
            connec += "&password=" + motDePasse;

            //Connexion
            connexion = DriverManager.getConnection(connec);
            System.out.println("connexion " + connexion);

        } catch (Exception e) {
            System.out.println("Exception : " + e.getMessage());
        }
    }

    public void cloture() {
        try {
            connexion.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Animal> affichageAnimal(String requete) {
        List<Animal> animaux = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs = statement.executeQuery(requete);
            while (rs.next()) {
                animaux.add(new Animal(rs.getInt("id"), rs.getString("tribu"),rs.getString("genre"),rs.getString("nom scientifique"),rs.getString("nom vulgaire"),rs.getString("zoneDeVie"),rs.getString("zone2"),rs.getString("meute/solitaire"),rs.getInt("esperanceDeVie"),rs.getInt("hauteurAuGarrot") ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return animaux;
    }


}
