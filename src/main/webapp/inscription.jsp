<%--
  Created by IntelliJ IDEA.
  User: Yorkblack
  Date: 25/04/2022
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %><html>
<head>
    <title>Title</title>
    <link href="css/boostrap/bootstrap.min.css" rel="stylesheet">
    <style> #image {background-color: white;
        text-align:center;
        margin-top: 10vw;
        padding: 1% 2%;
        width: 50vw; margin-left : 25vw;
    }
    body{
        background-image:url(image/fox.jpg);
        background-size: 1920px 1080px;
        opacity:90%;
    }
    </style>
</head>
<body>
<div id="image">
<form action="Inscription" method="post">

    <div class="mb-3">
        <label for="mail" class="form-label">Adresse mail :</label>
        <div class="input-group has-validation">
            <span class="input-group-text" >@</span>
            <input type="text" class="form-control" id="mail" name="mail" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" required>
        </div>

    </div>

    <div class="mb-3">
        <label for="user" class="form-label"> Nom d'utilisateur :</label>
        <input type="text" class="form-control" id="user" name="user" value="" required>
    </div>

    <div class="mb-3">
        <label for="mdp" class="form-label"> Mot de passe :</label>
        <input type="password"  class="form-control" id="mdp" name="mdp" value="" required>
    </div>

    <div class="col-12">
        <button type="submit" class="btn btn-secondary">Valider</button>
    </div>
    </form>
    <a href="index.jsp"> retour au menu </a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>