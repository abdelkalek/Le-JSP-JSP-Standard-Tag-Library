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
</head>
<body>
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
            <c:out value="Le nombre ${n} est premier"></c:out><br>
        </c:when>
        <c:otherwise>
            <c:out value=" ${n} Ce  n'est pas un nombre premier"></c:out><br>
        </c:otherwise>
    </c:choose>
    <%-- Fin - Affichage de resultat pour chaque nombre  --%>

</c:forEach>
</body>
</html>

