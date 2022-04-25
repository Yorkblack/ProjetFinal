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
</head>
<body>
<form action="Inscription" method="post">
    <label for="user">Nom d'utilisateur : </label><input type="text" id="user" name="user"/>
    <label for="mail">Adresse mail : </label><input type="text" id="mail" name="mail"/>
    <label for="mdp">Mot de passe : </label><input type="password" id="mdp" name="mdp"/>
    <input type="submit" value="Valider">
</form>


</body>
</html>