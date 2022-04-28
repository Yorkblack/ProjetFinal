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
        String description;
        if (tribu!=null) description="Le "+nomVulgaire+" appartient à la tribu "+tribu+", son nom scientifique est "+nomScientifique+", il vit en "+meuteSolitaire+" et a une espérance de vie de "+esperanceDeVie+" ans.";
        else description="Le "+nomVulgaire+" a pour nom scientifique "+nomScientifique+", il vit en "+meuteSolitaire+" et a une espérance de vie de "+esperanceDeVie+" ans.";
        if (hauteurAuGarrot!=0) description+=" Sa hauteur au garrot est de "+hauteurAuGarrot+"cm.";

        if (zone2==null) description+=" Il vit en "+zoneDeVie+".";
        else if (zone2!=null) description+=" Il vit en "+zoneDeVie+", mais aussi en "+zone2+".";

        return description;
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
