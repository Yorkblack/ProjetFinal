<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="css/boostrap/bootstrap.min.css" rel="stylesheet">

    <title>JSP - Hello World</title>
</head>
<body>

<br/>

<nav>
    <a href="#"></a>
    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">Accueil </a>

            <a href="inscription.jsp" class="btn btn-secondary btn-lg active" role="button"> Inscription </a>
           <!-- <a href="connexion.jsp" class="btn btn-secondary btn-lg active" role="button"> Connexion </a> -->
            <form action="Preconnexion" method="post">
                <input type="submit" class="btn btn-secondary btn-lg active" role="button" value="Connexion">  </input>
            </form>

            <a href="deconnexion.jsp" class="btn btn-secondary btn-lg active" role="button"> Déconnexion </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Accueil</a>
                    <a class="nav-link" href="afrique.jsp">Afrique</a>
                    <a class="nav-link" href="ameriqueDuN.jsp">Amerique du nord</a>
                    <a class="nav-link" href="ameriqueDuS.jsp">Amerique du sud</a>
                    <a class="nav-link" href="asie.jsp">Asie</a>
                    <a class="nav-link" href="europe.jsp">Europe</a>
                    <a class="nav-link" href="bibliotheque.jsp">Bibliothèque</a>
                    <a class="nav-link" href="#">Profil/déconnection</a>
                    <a class="nav-link disabled">Disabled</a>
                </div>
            </div>
        </div>
    </nav>
</nav>
<div id="content">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/loup.jpg" class="d-block" alt="loup" height=800 width=1500 >
            </div>
            <div class="carousel-item">
                <img src="image/lycaon.jpg" class="d-block" alt="lycaon" height=800 width=1500 >
            </div>
            <div class="carousel-item">
                <img src="image/chacal.jpg" class="d-block" alt="chacal" height=800 width=1500>
            </div>
            <div class="carousel-item">
                <img src="image/fennec.jpg" class="d-block" alt="fennec" height=800 width=1500>
            </div>

        </div>

        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
        <br>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="card" style="width: 18rem;">
                    <img src="image/pate.jpg" class="card-img-top" alt="Pate canidé" height=200 width=75>
                    <div class="card-body">
                        <p class="card-text"> Les canidés forment une famille de mammifères carnassiers aux griffes non rétractiles. Ils se répartissent en 12 genres, en 23 espèces et en 4 sous-espèces pour le genre Canis. Ils possèdent tous un museau pointu et de longues canines. Les canidés possèdent une ouïe et un odorat extrêmement développés, ce qui leur permet de chasser de jour et de nuit.</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="card" style="width: 18rem;">
                    <img src="image/canidesrepartition.jpg" class="card-img-top" alt="Repartition" height=200 width=75>
                    <div class="card-body">
                        <p class="card-text">On trouve des canidés sur l'ensemble des continents de la planète à l'exception de l'Antarctique, dans les milieux les plus divers depuis le Grand Nord jusque dans les zones arides, et à diverses altitudes. Ils font preuve d'une grande faculté d'adaptation</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="card" style="width: 18rem;">
                    <img src="image/lycaonmange.jpg" class="card-img-top" alt="Lycaons s'attaquant a une carcasse">
                    <div class="card-body">
                        <p class="card-text"> Certaines espèces chassent en groupes (telles que les loups) attaquant de grands mammifères : cervidés et bovidés, tandis que d'autres pratiquent la traque en solitaire comme le renard se contentent de petits rongeurs : lièvres, mulots, campagnols, lemmings, lézards ou insectes. </p>
                    </div>
                </div>
            </div>
        </div> </div>


    <div class="row text-center">
        <div class="embed-responsive embed-responsive-16by9">
            <br>
Lors ce que l'on pense au canidé on pense naturellement au loup et surtout au chien, mais il existe beaucoup d'espece; vous trouverez dans le menu des listes de canidae en fonction des continents ainsi qu'une bibliothèque afin d'avoir une vue d'ensemble.
            <br> <br>
<h3> La domestication du chien </h3>
            La recherche de nourriture par les loups a constitué le point de départ de sa domestication. Pour cela, il s’est en effet rapproché des camps humains. Diverses hypothèses ont été avancées concernant cette domestication : chasse, gardiennage, compagnie et enfin d’après une étude récente, comme tête de bétail pour fournir de la viande aux hommes de l’époque.
<br>
            Ainsi, cette période qui a fait naître les chiens domestiques se situerait entre les chasseurs-cueilleurs et les premiers agriculteurs, en parallèle de l’émergence de la culture du riz, c’est-à-dire, entre 5400 et 16 300 ans.
<br> <br>
            <img src="image/genealogie-historique-du-chien.jpg" alt="sousespece">

            <iframe width="560" height="315" src="https://www.youtube.com/embed/z10Pn4WOw-0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>    <footer class="bg-light text-center text-lg-start">
        <!-- Copyright -->
        <br>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2022 Copyright:
            <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
    </footer>
    <!-- <p> Here is the code </p> -->
</div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>