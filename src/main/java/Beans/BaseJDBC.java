package Beans;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class BaseJDBC {
    public static void testJDBC(String requete){
        try {
            //Identifiants
            String nomUtilisateur="root";
            String motDePasse="pass";
            String nomBase="tablesindependantes";

            //Préparation
            String connec = "jdbc:mariadb://localhost:3306/";
            connec+=nomBase+"?user="+nomUtilisateur;
            connec+="&password="+motDePasse;

            //Connexion
            Connection connexion=DriverManager.getConnection(connec);
            Statement statement=connexion.createStatement();



            //Récup requête
            ResultSet rs= statement.executeQuery(requete);

            //Traitement
            while (rs.next()){
                System.out.println(
                        rs.getString("nom"));//+","+rs.getString("espece"));

            }

            //Fermeture
            connexion.close();
        }catch (Exception e){
            System.out.println("Exception : "+e.getMessage());
        }
    }

    public static void creationUtilisateur(String user, String mail, String password){
        try {
            //Identifiants
            String nomUtilisateur="root";
            String motDePasse="pass";
            String nomBase="projetfinal";

            //Préparation
            String connec = "jdbc:mariadb://localhost:3306/";
            connec+=nomBase+"?user="+nomUtilisateur;
            connec+="&password="+motDePasse;

            //Connexion
            Connection connexion=DriverManager.getConnection(connec);
            Statement statement=connexion.createStatement();

            //Requête
            String requete="INSERT INTO utilisateur VALUES(DEFAULT,mail,user,password);";

            //Récup requête
            ResultSet rs= statement.executeQuery(requete);

            //Traitement
            while (rs.next()){
                System.out.println(
                        rs.getString("nom"));//+","+rs.getString("espece"));

            }

            //Fermeture
            connexion.close();
        }catch (Exception e){
            System.out.println("Exception : "+e.getMessage());
        }
    }
}
