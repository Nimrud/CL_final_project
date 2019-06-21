<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 03.06.19
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj/zmień koordynatora</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>

<br><br>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<div class="container">

    <header>Podaj dane koordynatora NFOŚiGW</header>
    <br>

    <form:form method="post" modelAttribute="coordinator">

        <div class="row">
            <div class="form-group col-md-4">
                <label for="fullNameId">Imię i nazwisko: </label>
                <form:input type="text" path="fullName" id="fullNameId"/>
                <form:errors path="fullName" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="emailId">E-mail: &nbsp; &nbsp;</label>
                <form:input type="text" path="email" id="emailId"/>
                <form:errors path="email" element="div"/>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-4">
                <label for="phone1Id">Telefon 1: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
                <form:input type="text" path="phone1" id="phone1Id"/>
                <form:errors path="phone1" element="div"/>
            </div>

            <div class="form-group col-md-4">
                <label for="phone2Id">Telefon 2: </label>
                <form:input type="text" path="phone2" id="phone2Id"/>
                <form:errors path="phone2" element="div"/>
            </div>
        </div>
        <br>

        <input type="submit" value="Dodaj">
    </form:form>

</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
