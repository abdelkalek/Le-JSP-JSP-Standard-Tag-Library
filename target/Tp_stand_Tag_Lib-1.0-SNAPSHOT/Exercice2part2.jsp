<%--
  Created by IntelliJ IDEA.
  User: Abdelkalek
  Date: 30/04/2021
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exercice2 part2</title>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body class="container">
<div class="container-fluid ">

    <%--card formulaire--%>
    <div class="card border-primary text-center my-2" style="max-width: 20rem;">
        <div class="card-header mx-1">Exercice2:</div>
        <h4 class="card-title ">Donner un Nombre</h4>
        <form action="Exercice2part2.jsp" method="Post">
            <div class="form-group m-2">
                <input name="nbr" class="form-control" placeholder="numbre" type="number">
            </div> <!-- form-group// -->
            <div class="form-group m-2">
                <button type="submit" class="float-right btn btn-outline-primary">Vierifier Nombre</button>
            </div> <!-- form-group// -->
        </form>


    <c:set var="n" value="${param.nbr}"></c:set>
    <c:set var="est_premier" value='True'></c:set>
    <c:catch var="catchException">

        <c:forEach var="i" begin="2" end="${n-1}" step="1">
            <c:if test="${n%i==0 and n>2}">
                <c:set var="est_premier" value='False'></c:set>
            </c:if>
        </c:forEach>

        <c:choose>
            <c:when test="${est_premier}">
                <div class="alert alert-primary" role="alert">
                    <c:out value="Le nombre ${n} est premier"></c:out><br>
                </div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-success" role="alert">
                    <c:out value=" ${n} Ce  n'est pas un nombre premier"></c:out><br>
                </div>
            </c:otherwise>
        </c:choose>
    </c:catch>
    <c:if test="${catchException != null}">
    </c:if>
</div>
</div>
<!-- card.// -->
</body>
</html>
