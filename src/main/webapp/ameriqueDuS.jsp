<%--
  Created by IntelliJ IDEA.
  User: Vanessa
  Date: 26/04/2022
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Amerique du Sud</title>
    <style> #image { float:right;
        padding-left: 10px;
    }

    .text{ text-align:justify;
        margin-left: 20px;
        margin-right: 15px;
        background-color: #F5DEB3 ;
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
            <form action="Preconnexion" method="post">
                <input type="submit" class="btn btn-secondary btn-lg active" role="button" value="Connexion">  </input>
            </form>
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
    L'Amérique du Sud abrite le plus grand des canidés, le loup à crinière.
<br> <br>
    <h2> Le Loup à crinière</h2>
    Le loup à crinière (Chrysocyon brachyurus) est une espèce de carnivores de la famille des canidés, originaire de l'Amérique du Sud. Il est le seul représentant de son genre : Chrysocyon. Bien que ressemblant à un loup ou à un grand renard, le loup à crinière est génétiquement distinct de tous les autres canidés.
    <br> <br>
    <h3> Caractéristiques </h3> <iframe id="image" width="560" height="315" src="https://www.youtube.com/embed/g6HzTtMxGLA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
Le loup à crinière doit surtout son nom à la présence d'une longue et abondante toison noire sur son encolure et sur ses épaules.
<br> Par ailleurs, son allure et son aspect de loup, bien qu'il puisse d'ailleurs aussi ressembler à un renard à longues pattes, conforte cette appellation.
<br>Sa queue est relativement courte, les oreilles sont redressées, et le pelage — de texture plus souple que chez les autres canidés — ne comporte pas de sous-poil. Les longues pattes fines du loup à crinière sont adaptées à son milieu de vie, essentiellement constitué par de hautes herbes : le cerrado.
<br> Malgré son apparence, ce n'est pas un coureur rapide. Mais ses grandes oreilles lui permettent de détecter les petites proies dont il se nourrit.
<br> La longueur de son corps est de 120 à 130 cm pour une hauteur au garrot de 75 à 90 cm. Sa queue est d'une longueur de 28 à 45 cm et son poids varie de 20 à 25 kg. Son pelage est roux chamois, avec des « chaussettes » noires, museau et crinière noirs, dessous du menton blanc, de même que l'intérieur des oreilles et le bout de la queue.
<br>Les nouveau-nés sont noirs, avec l'extrémité de la queue blanche.
<br> <br>
<h3> Comportement social</h3>
Les loups à crinière s'installent dans des terriers aménagés sous un couvert suffisant. On ignore le rôle des mâles dans l'éducation des jeunes chez les individus vivant en liberté, mais en captivité, on a remarqué qu'ils les nourrissaient par régurgitation.
<br>Les couples semblent être monogames, vivant dans des territoires d'un ordre de 30 km2.
<br> <br>
<h3> Alimentation </h3>
Le loup à crinière est omnivore et se révèle être un chasseur opportuniste, s'attaquant à des proies allant des petits vertébrés jusqu'au paca.
<br>Ses proies les plus habituelles sont les lapins, les petits rongeurs, les oiseaux et les tatous, et plus rarement des reptiles, des insectes voire des poissons. Il consomme également beaucoup de fruits (jusqu'à la moitié de son alimentation), dont le « fruit du loup » (fruit de Solanum lycocarpum, autrement nommé « tomato-like fruit of Lobeira » en anglais). Ce fruit disposerait de propriétés antiparasitaires contre le ver rénal géant, Dioctophyme renale.
<br>Le loup à crinière effectue ses quêtes de nourriture, seul et surtout la nuit. Il peut aussi le faire durant la journée, dans des zones à l'écart des humains.

<br>
<br>
Le loup à crinière n'est pas le seul canidé remarquable sur ce territoire de 17,84 millions de km². Vous pouvez vous renseigner sur d'autre canidae présent ci dessous :
<br>
<br>
<a href="index.jsp"> retour au menu </a>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
