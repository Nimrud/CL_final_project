<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 04.06.19
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista beneficjentów</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<br><br>

<div class="container-fluid">

    <header>Lista beneficjentów</header>

    <table class="table-responsive table-hover table-bordered">
        <thead class="table-secondary">
        <tr align="center">
            <th rowspan="2">Beneficjent</th>
            <th rowspan="2">E-mail</th>
            <th rowspan="2">Miejscowość</th>
            <th rowspan="2">Kod</th>
            <th rowspan="2">Adres</th>
            <th colspan="5">Koordynator beneficjenta nr 1</th>
            <th colspan="5">Koordynator beneficjenta nr 2</th>
            <th rowspan="2">Zmiana</th>
        </tr>
        <tr>
            <th>Imię i nazwisko</th>
            <th>Stanowisko</th>
            <th>Email</th>
            <th>Telefon 1</th>
            <th>Telefon 2</th>

            <th>Imię i nazwisko</th>
            <th>Stanowisko</th>
            <th>Email</th>
            <th>Telefon 1</th>
            <th>Telefon 2</th>
        </tr>
        </thead>

        <c:forEach items="${beneficiaries}" var="ben">
            <tr>
                <td>${ben.name}</td>
                <td>${ben.email}</td>
                <td>${ben.city}</td>
                <td>${ben.code}</td>
                <td>${ben.street}</td>

                <td>${ben.benCoord1}</td>
                <td>${ben.benCoord1JobPosition}</td>
                <td>${ben.benCoord1Email}</td>
                <td>${ben.benCoord1phone1}</td>
                <td>${ben.benCoord1phone2}</td>

                <td>${ben.benCoord2}</td>
                <td>${ben.benCoord2JobPosition}</td>
                <td>${ben.benCoord2Email}</td>
                <td>${ben.benCoord2phone1}</td>
                <td>${ben.benCoord2phone2}</td>
                <td>
                    <a href="/beneficiaries/update/${ben.id}" class="btn btn-outline-warning">edytuj</a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
