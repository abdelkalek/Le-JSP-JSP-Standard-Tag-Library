<%--
  Created by IntelliJ IDEA.
  User: Abdelkalek
  Date: 30/04/2021
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Jsp page </title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body class="container ">
<div class="container-fluid mt-4">


<c:forEach var="n" begin="2" end="30" step="1"><%-- les nombre de 2 a 30 --%>
    <c:set var="est_premier" value='True'></c:set> <%--declaration de variable boolean  --%>
    <%-- verifier si de nombre n est ne pas premier --%>
    <c:forEach var="i" begin="2" end="${n-1}" step="1">
        <c:if test="${n%i==0}">
            <c:set var="est_premier" value='False'></c:set>
        </c:if>
    </c:forEach>
    <%-- fin -- verifier si de nombre n est ne pas premier --%>
    <%-- Affichage de resultat pour chaque nombre  --%>
    <c:choose>
        <c:when test="${est_premier}">
            <div class="alert alert-success" role="alert">
                <c:out value="${n}   nombre  premier"></c:out><br>
            </div>
        </c:when>
        <c:otherwise>
            <div class="alert alert-warning" role="alert">
                <c:out value=" ${n}   Cen'est pas un nombre premier"></c:out><br>
            </div>

        </c:otherwise>
    </c:choose>
    <%-- Fin - Affichage de resultat pour chaque nombre  --%>

</c:forEach>
</div>
</body>
</html>

