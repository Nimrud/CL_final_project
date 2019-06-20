<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 03.06.19
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zaloguj się</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>

<div>
    Zaloguj się
</div>

<form method="post">
    <div>
        <label for="emailId">E-mail: </label>
        <input type="email" name="email" id="emailId">

    </div>

    <div>
        <label for="passwordId">Hasło: </label>
        <input type="password" name="password" id="passwordId">

    </div>

    <c:if test="${isLogged == false}">
        <div class="error">Logowanie się nie powiodło</div>
        <br>
    </c:if>

    <input type="submit" value="Zaloguj się">

</form>

</body>
</html>
