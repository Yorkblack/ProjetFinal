<%--
  Created by IntelliJ IDEA.
  User: Vanessa
  Date: 26/04/2022
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Asie</title>
    <style> #image { float:right;
        padding-left: 10px;
        padding-bottom:20px ;
    }
    .text{ text-align:justify;
        margin-left: 20px;
        margin-right: 15px;
        background-color: hsla(195,53%,79%,0.5);
    }

    </style>
    <link href="css/boostrap/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<nav>
    <a href="#"></a>
    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Accueil </a>

            <a href="inscription.jsp" class="btn btn-secondary btn-lg active" role="button"> Inscription </a>
            <a href="connexion.jsp" class="btn btn-secondary btn-lg active" role="button"> Connexion </a>
            <a href="deconnexion.jsp" class="btn btn-secondary btn-lg active" role="button"> Déconnexion </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#">Asie</a>
                    <a class="nav-link" href="afrique.jsp">Afrique</a>
                    <a class="nav-link" href="ameriqueDuN.jsp">Amerique du nord</a>
                    <a class="nav-link" href="ameriqueDuS.jsp">Amerique du sud</a>
                    <a class="nav-link" href="europe.jsp">Europe</a>
                    <a class="nav-link" href="bibliotheque.jsp">Bibliothèque</a>
                    <a class="nav-link" href="#">Profil/déconnection</a>

                </div>
            </div>
        </div>
    </nav>
</nav>
<br>
<div class="text">
    Le Dhole, ou encore « Chien sauvage d'Asie » (Cuon alpinus) est une espèce de mammifères de la famille des canidés et du genre Cuon, dont il est le seul représentant actuel.
<br> <br>
    <h3> Caracteristiques </h3>
    <img id="image" src="image/dhole33.jpeg" alt="dhole" >
    Le Dhole s'apparente au Loup ou au Lycaon. Sa robe est d'une couleur brun-roux. Il vit principalement en Asie centrale et orientale mais s'adapte facilement à de nouveaux environnements. <br>

    Le mâle est beaucoup plus grand que la femelle. Il mesure de 75 cm à 1 m de long, de 42 à 55 cm au garrot et pèse entre 10 et 25 kg. Sa queue mesure environ 40 cm de long et son extrémité est noire. Il possède 40 dents, à la différence de la plupart des autres canidés qui en ont 42.

    <br> Les dholes vivent en groupes pouvant atteindre 40 individus. Autrefois de plus de 100 individus, les troupes aussi nombreuses ont disparu lorsque les grands herbivores ont commencé à se raréfier.

    Contrairement aux loups, plus d’une femelle peut se reproduire si sa place dans la hiérarchie le permet ; elles élèvent leurs jeunes en commun.

   Cet animal évite les territoires où l'être humain est présent et est difficile à observer.
<br> <br>
    <h3> Repartition</h3>
    Aujourd'hui, en 2021, le Dhole n'est présent de manière attestée qu'au Bangladesh, au Bhoutan, au Cambodge, en Chine, en Inde, en Indonésie, en Malaisie, en Birmanie, au Népal, en Thaïlande et au Laos. Il l'était également en Europe jusqu'au début du Paléolithique supérieur, où il a succédé à une autre espèce éteinte, Cuon priscus, sans nécessairement descendre de celle-ci.
<br>
    L'espèce est classée comme espèce en danger par l'Union internationale pour la conservation de la nature (UICN) car ses populations sont en diminution et estimées à moins de 2 500 adultes. Les facteurs contribuant à ce déclin sont la déficience de l'habitat, la raréfaction des proies comestibles due à la concurrence avec d'autres espèces, l'extinction progressive provoquée par la prédation d'autres variétés animales et le transfert de maladies par les chiens domestiques.
    <br> <br>
    <h3> Le Dhole dans la culture populaire </h3>
    Dans Le Second Livre de la jungle de Rudyard Kipling, le Dhole — également appelé « chien rouge » — est décrit comme l'animal le plus dangereux d'Inde et davantage craint que le Tigre, qui chasse en grandes meutes féroces.
<br>
    Cependant, Kipling a visité le sous-continent indien à la fin du xixe siècle, et les très grandes meutes de dholes qu'il décrit, pouvant compter plusieurs dizaines voire centaines d'individus, ont aujourd'hui disparu.

<br> <br>    Le Dhole n'est pas le seul canidé présent sur ce territoire de 44,58 millions de km². Vous pouvez vous renseigner sur d'autre canidae présent ci dessous :
    <br>
    <br>
    <a href="index.jsp"> retour au menu </a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>



</body>
</html>
