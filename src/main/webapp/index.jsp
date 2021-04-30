<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Jsp page </title>
</head>
<body>
<c:forEach var="i" begin="0" end="30" step="1">
    <c:out value="${ i }"/>
</c:forEach>
</body>
</html>


