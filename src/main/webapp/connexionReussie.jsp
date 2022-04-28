<%--
  Created by IntelliJ IDEA.
  User: Vanessa
  Date: 26/04/2022
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %><html>
<head>
  <title>co reussi</title>
  <link href="css/boostrap/bootstrap.min.css" rel="stylesheet">
  <style> #image {background-color: white;
    text-align:center;
    margin-top: 10vw;
    padding: 1% 2%;
    width: 50vw; margin-left : 25vw;
  }
  body{
    background-image:url(image/coreussi.jpg);
    background-size: 1500px 800px;
    opacity:90%;
  }
  </style>

</head>
<body>
<div id="image">
  Vous êtes connecté(e), Bon retour, <c:out value ="${sessionScope.pseudo}"/> <!-- Pk ça marche pas cette merde ? -->
<br>
  <a href="index.jsp"> retour au menu </a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
