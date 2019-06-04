<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 04.06.19
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj użytkownika</title>
</head>
<body>

<form:form method="post" modelAttribute="user">

    <label for="fullNameId">Imię i nazwisko: </label>
    <form:input type="text" path="fullName" id="fullNameId" />
    <form:errors path="fullName" element="div"/>
    <br><br>

    <label for="emailId">E-mail: </label>
    <form:input type="text" path="email" id="emailId"/>
    <form:errors path="email" element="div"/>
    <br><br>

    <label for="passwordId">Hasło: </label>
    <form:input type="password" path="password" id="passwordId" />
    <form:errors path="password" element="div"/>
    <br><br>

    <input type="submit" value="Dodaj">
</form:form>

</body>
</html>
