package Beans;

public class Animal {
    private int id;
    private String tribu;
    private String genre;
    private String nomScientifique;
    private String nomVulgaire;
    private String zoneDeVie;
    private String zone2;
    private String meuteSolitaire;
    private int esperanceDeVie;
    private int hauteurAuGarrot;


    public Animal() {
    }
    public Animal(int id, String tribu, String genre, String nomScientifique, String nomVulgaire, String zoneDeVie, String meuteSolitaire, int esperanceDeVie, int hauteurAuGarrot) {
        this.id = id;
        this.tribu = tribu;
        this.genre = genre;
        this.nomScientifique = nomScientifique;
        this.nomVulgaire = nomVulgaire;
        this.zoneDeVie = zoneDeVie;
        this.meuteSolitaire = meuteSolitaire;
        this.esperanceDeVie = esperanceDeVie;
        this.hauteurAuGarrot = hauteurAuGarrot;
    }
    public Animal(int id, String tribu, String genre, String nomScientifique, String nomVulgaire, String zoneDeVie, String zone2, String meuteSolitaire, int esperanceDeVie, int hauteurAuGarrot) {
        this.id = id;
        this.tribu = tribu;
        this.genre = genre;
        this.nomScientifique = nomScientifique;
        this.nomVulgaire = nomVulgaire;
        this.zoneDeVie = zoneDeVie;
        this.zone2 = zone2;
        this.meuteSolitaire = meuteSolitaire;
        this.esperanceDeVie = esperanceDeVie;
        this.hauteurAuGarrot = hauteurAuGarrot;
    }

    @Override
    public String toString() {
        return "Animal{" +
                "id=" + id +
                ", tribu='" + tribu + '\'' +
                ", genre='" + genre + '\'' +
                ", nomScientifique='" + nomScientifique + '\'' +
                ", nomVulgaire='" + nomVulgaire + '\'' +
                ", zoneDeVie='" + zoneDeVie + '\'' +
                ", zone2='" + zone2 + '\'' +
                ", meuteSolitaire='" + meuteSolitaire + '\'' +
                ", esperanceDeVie=" + esperanceDeVie +
                ", hauteurAuGarrot=" + hauteurAuGarrot +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTribu() {
        return tribu;
    }

    public void setTribu(String tribu) {
        this.tribu = tribu;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getNomScientifique() {
        return nomScientifique;
    }

    public void setNomScientifique(String nomScientifique) {
        this.nomScientifique = nomScientifique;
    }

    public String getNomVulgaire() {
        return nomVulgaire;
    }

    public void setNomVulgaire(String nomVulgaire) {
        this.nomVulgaire = nomVulgaire;
    }

    public String getZoneDeVie() {
        return zoneDeVie;
    }

    public void setZoneDeVie(String zoneDeVie) {
        this.zoneDeVie = zoneDeVie;
    }

    public String getZone2() {
        return zone2;
    }

    public void setZone2(String zone2) {
        this.zone2 = zone2;
    }

    public String getMeuteSolitaire() {
        return meuteSolitaire;
    }

    public void setMeuteSolitaire(String meuteSolitaire) {
        this.meuteSolitaire = meuteSolitaire;
    }

    public int getEsperanceDeVie() {
        return esperanceDeVie;
    }

    public void setEsperanceDeVie(int esperanceDeVie) {
        this.esperanceDeVie = esperanceDeVie;
    }

    public int getHauteurAuGarrot() {
        return hauteurAuGarrot;
    }

    public void setHauteurAuGarrot(int hauteurAuGarrot) {
        this.hauteurAuGarrot = hauteurAuGarrot;
    }
}
