package Beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UtilisateurDAO {
    private Connection connexion=null;

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
            System.out.println("connexion "+connexion);

        } catch (Exception e) {
            System.out.println("Exception : " + e.getMessage());
        }
    }

    public void cloture(){
        try {
            connexion.close();
        } catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
    public void nouvelUtilisateur(Utilisateur a){
        try{
            Statement statement=connexion.createStatement();
            String requete="INSERT INTO utilisateur VALUES(DEFAULT,'"+a.getMail()+"','"+a.getPseudo()+"','"+a.getPassword()+"');";
            statement.executeUpdate(requete);
        }catch (SQLException throwables){
            throwables.printStackTrace();

        }
    }

    public List<Utilisateur> affichageUtilisateurs(){
        List<Utilisateur> utilisateurs=new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            String requete = "SELECT * FROM utilisateur;";
            ResultSet rs = statement.executeQuery(requete);
            while (rs.next()){
                utilisateurs.add(new Utilisateur(rs.getString("mail"),rs.getString("speudo"),rs.getString("mdp")));
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();

        }
        return utilisateurs;
    }
}
