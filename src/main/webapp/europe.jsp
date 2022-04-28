<%--
  Created by IntelliJ IDEA.
  User: Vanessa
  Date: 26/04/2022
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %><html>
<head>
    <title>Europe</title>
    <style> #image { float:right;
        padding-left: 10px;
            }
    .text{ text-align:justify;
        margin-left: 20px;
        margin-right: 15px;
        background-color: #DCDCDC;
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
                    <a class="nav-link active" aria-current="page" href="Europe">Europe</a>
                    <a class="nav-link" href="Afrique">Afrique</a>
                    <a class="nav-link" href="AmeriqueDuN">Amerique du nord</a>
                    <a class="nav-link" href="AmeriqueDuS">Amerique du sud</a>
                    <a class="nav-link" href="Asie">Asie</a>

                </div>
            </div>
        </div>
    </nav>
</nav>
<br>
<div class="text">
    Un chacal doré (Canis aureus), est un carnivore moyen à mi-chemin entre renard et loup, présent historiquement d'Asie à l'Europe mais pas en France, a été observé fin 2020 dans les Deux-Sèvres, confirmant une colonisation vers l'Occident.
<br> <br>
    <h2>Le chacal doré </h2>
    Malgré son nom, le chacal doré n'est pas étroitement lié aux autres espèces de chacal : des études morphologiques et moléculaires indiquent une plus grande affinité avec le loup gris et le coyote.
<br> <br>
    <h3> Caractéristiques </h3> <img id="image" src="image/Europe.PNG" alt="sousespece">
    Le chacal doré présente une morphologie intermédiaire entre le renard roux et le loup gris (taille, silhouette, couleurs, empreintes, fèces...). Il peut peser de 7 à 17 kg avec une hauteur au garrot de 45-50 cm, plus grand qu'un renard, mais avec une queue plus courte et moins touffue.
    <br> Son apparence, son pelage, est un peu plus proche du loup, mais son comportement, son alimentation, le rapprochent du renard car c'est aussi un charognard et un prédateur opportuniste qui peut chasser des petites proies.
    <br> Il vit plutôt isolé ou en couple qu'en meute comme le loup, avec un comportement de discrétion similaire au renard roux, il ne peut représenter qu'exceptionnellement une menace pour des troupeaux, une brebit étant déjà gros pour lui.
   <br> <br>
    <h3> Répartition</h3>
    Autrefois largement présent (selon des preuves paléontologiques fossiles8), c'est l'une des espèces de canidés les plus répandues dans le monde, avec de vastes territoires en Europe centrale, Europe de l'Est, Afrique du Nord et dans certaines régions d'Asie(Birmanie, Inde). Son aire de répartition s'étend aujourd'hui rapidement en Europe de l'Ouest, occupant des zones où il n'y a plus ou très peu de loups.  <br>Cette colonisation, d'un animal déjà présent au sud-est du continent, étant naturelle et liée à une évolution de l'environnement, la Commission européenne conclut en 2016 qu'il ne doit pas être considéré comme une espèce exotique envahissante.

    <br> Il a survécu dans des zones reculées, souvent désertiques, mais ce n'est pas une espèce uniquement adaptée aux pays chauds : il est fréquent au paléolithique dans le Caucase, et comme la hyène et la Genette (Genetta genetta) il a été contemporain des bisons, aurochs, mammouths et autres exemples de la faune contemporaine de l'Homme préhistorique en Europe durant les dernières périodes interglaciaires. La période de présence et l'emprise de son aire de répartition dans la partie Ouest de l'Europe fait encore débat.

    <br> Depuis le Moyen Âge et surtout dans la période moderne sa répartition européenne semble avoir été très fluctuante, avec notamment des baisses spectaculaires jusqu'en 1960, une période de récupération (années 1960, années 1970) puis une expansion notamment vers le nord-ouest de l'Europe (depuis le début des années 1980).

    <br>En Europe, des populations actuelles sont centrées dans 5 zones : en Europe du Sud-Est, dans le Caucase, dans le sud de la Grèce et l'île de Samos et plus récemment autour de la Baltique.

    <br>
    <br>
    Cependant, le chacal doré il n'est pas le seul canidé présent sur ce territoire de 10,53 millions de km². Vous pouvez vous renseigner sur d'autre canidae présent ci dessous :
    <br>
    <c:forEach items="${liste}" var="Animal">
        <c:out value="${Animal}" /><br />
    </c:forEach>
    <br>
    <br>
    <a href="index.jsp"> retour au menu </a>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
