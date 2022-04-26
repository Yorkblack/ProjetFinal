package Beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UtilisateurDAO {
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

    public void nouvelUtilisateur(Utilisateur a) {
        try {
            Statement statement = connexion.createStatement();
            String requete = "INSERT INTO utilisateur VALUES(DEFAULT,'" + a.getMail() + "','" + a.getPseudo() + "','" + a.getPassword() + "');";
            statement.executeUpdate(requete);
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
    }

    public List<Utilisateur> affichageUtilisateurs() {
        List<Utilisateur> utilisateurs = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            String requete = "SELECT * FROM utilisateur;";
            ResultSet rs = statement.executeQuery(requete);
            while (rs.next()) {
                utilisateurs.add(new Utilisateur(rs.getString("speudo"), rs.getString("mail"), rs.getString("mdp")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return utilisateurs;
    }

    public boolean checkPseudoExist(String pseudo) {
        String query = "SELECT * FROM utilisateur WHERE speudo = ?";
        try (PreparedStatement statement = connexion.prepareStatement(query)) {
            statement.setString(1, pseudo);
            try (ResultSet rs = statement.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException se) {
            se.printStackTrace();
            return false;
        }
    }

    public boolean checkMailExist(String mail) {
        String query = "SELECT * FROM utilisateur WHERE mail = ?";
        try (PreparedStatement statement = connexion.prepareStatement(query)) {
            statement.setString(1, mail);
            try (ResultSet rs = statement.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException se) {
            se.printStackTrace();
            return false;
        }
    }

    public boolean mailEtMdpCorrects(String mail, String mdp) {
        boolean identifiantsValides=false;
        if (checkMailExist(mail) == true) {
            System.out.println("Le mail existe, je suis rentré dans la boucle if");
            try {
                Statement statement = connexion.createStatement();
                String query = "SELECT * FROM utilisateur WHERE mail ='" + mail + "';";
                ResultSet rs = statement.executeQuery(query);
                while (rs.next()){
                    System.out.println("Mail envoyé dans la fonction = "+mail);
                    System.out.println("MDP envoyé dans la fonction = "+mdp);

                    System.out.println("Mail trouvé dans la base de données : "+rs.getString("mail"));
                    System.out.println("MDP trouvé dans la base de données : "+rs.getString("mdp"));
                    if (mdp == rs.getString("mdp")) identifiantsValides= true;
                }


            } catch (SQLException throwables) {
                throwables.printStackTrace();

            }
        }
        System.out.println(identifiantsValides);
        return identifiantsValides;
    }
}
