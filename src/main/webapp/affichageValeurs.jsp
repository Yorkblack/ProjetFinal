<%--
  Created by IntelliJ IDEA.
  User: Yorkblack
  Date: 25/04/2022
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <c:out value="${utilisateur}"></c:out>
    <c:out value="${email}"></c:out>
    <c:out value="${password}"></c:out>

</div>
</body>
</html>
