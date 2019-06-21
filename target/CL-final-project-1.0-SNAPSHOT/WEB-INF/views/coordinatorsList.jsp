<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 03.06.19
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista koordynatorów NFOŚiGW</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!--
    <script>
        function confirmDelete(id, fullName) {
            if (confirm("Czy na pewno chcesz skasować następującego koordynatora: '" + fullName + "'?")) {
                window.location.href = "/coordinators/delete/" + id;
            }
        }
    </script>
    -->

</head>
<body>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<br><br>

<div class="container">

    <header>Lista koordynatorów NFOŚiGW</header>

    <table class="table-hover table-bordered">
        <thead class="table-secondary">
        <tr align="center">
            <th>Imię i nazwisko</th>
            <th>E-mail</th>
            <th>Telefon 1</th>
            <th>Telefon 2</th>
            <th>Zmiana</th>
        </tr>
        </thead>

        <c:forEach items="${coordinators}" var="coordinator">
            <tr>
                <td>${coordinator.fullName}</td>
                <td>${coordinator.email}</td>
                <td>${coordinator.phone1}</td>
                <td>${coordinator.phone2}</td>
                <td>
                    <a href="/coordinators/update/${coordinator.id}" class="btn btn-outline-warning">edytuj</a>
                </td>
                <!--
            <td>
                <a href="#" onclick="confirmDelete(${coordinator.id}, '${coordinator.fullName}')">skasuj</a>
            </td>
            -->
            </tr>
        </c:forEach>

    </table>

</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
