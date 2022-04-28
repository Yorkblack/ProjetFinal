<%--
  Created by IntelliJ IDEA.
  User: Vanessa
  Date: 26/04/2022
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bibliothèque</title>

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
                    <a class="nav-link active" aria-current="page" href="#">Europe</a>
                    <a class="nav-link" href="afrique.jsp">Afrique</a>
                    <a class="nav-link" href="ameriqueDuN.jsp">Amerique du nord</a>
                    <a class="nav-link" href="ameriqueDuS.jsp">Amerique du sud</a>
                    <a class="nav-link" href="asie.jsp">Asie</a>
                    <a class="nav-link" href="bibliotheque.jsp">Bibliothèque</a>
                    <a class="nav-link" href="#">Profil/déconnection</a>

                </div>
            </div>
        </div>
    </nav>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
