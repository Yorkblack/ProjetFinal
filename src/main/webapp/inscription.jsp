<%--
  Created by IntelliJ IDEA.
  User: Yorkblack
  Date: 25/04/2022
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
        background-image:url(image/fennec.jpg);
    }
    </style>
</head>
<body>
<form action="Inscription" method="post">
    <label for="user">Nom d'utilisateur : </label><input type="text" id="user" name="user"/>
    <label for="mail">Adresse mail : </label><input type="text" id="mail" name="mail"/>
    <label for="mdp">Mot de passe : </label><input type="password" id="mdp" name="mdp"/>
    <input type="submit" value="Valider">
</form>
<form class="row g-3">
    <div class="col-md-4">
        <label for="user" class="form-label"> Nom d'utilisateur :</label>
        <input type="text" class="form-control is-valid" id="user" name="user" value="Mark" required>
        <div class="valid-feedback">
            Looks good!
        </div>    </div>

    <div class="col-md-4">
        <label for="mail" class="form-label"> Adresse mail :</label>
        <input type="text" class="form-control is-valid" id="mail" name="mail" value="Otto" required>
        <div class="valid-feedback">
            Looks good!
        </div>
    </div>
    <div class="col-md-4">
        <label for="mdp" class="form-label">Mot de passe :</label>
        <div class="input-group has-validation">
            <span class="input-group-text" id="inputGroupPrepend3">@</span>
            <input type="text" class="form-control is-invalid" id="validationServerUsername" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" required>
            <div id="validationServerUsernameFeedback" class="invalid-feedback">
                Please choose a username.
            </div>
        </div>
    </div>

        </div>
    </div>
    <div class="col-12">
        <button class="btn btn-primary" type="submit">Submit form</button>
    </div>
</form>




</body>
</html>