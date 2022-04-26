package Beans;

public class Utilisateur {
    private String pseudo;
    private String mail;
    private String password;

    public Utilisateur(String utilisateur, String mail, String password) {
        this.pseudo = utilisateur;
        this.mail = mail;
        this.password = password;
    }

    public Utilisateur() {
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setUtilisateur(String utilisateur) {
        this.pseudo = utilisateur;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Utilisateur{" +
                "utilisateur='" + pseudo + '\'' +
                ", mail='" + mail + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
