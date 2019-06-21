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
    <title>Lista użytkowników systemu</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!--
    <script>
        function confirmDelete(id, fullName) {
            if (confirm("Czy na pewno chcesz skasować używkownika '" + fullName + "'?")) {
                window.location.href = "/users/delete/" + id;
            }
        }
    </script>
    -->

</head>
<body>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<br><br>

<div class="container">

    <header>Lista użytkowników systemu <span class="error">[w docelowej wersji - moduł niewidoczny dla użytkowników]</span></header>


    <table class="table-hover table-bordered">
        <thead class="table-secondary">
        <tr align="center">
            <th>Imię i nazwisko</th>
            <th>E-mail</th>
            <th>Aktywny</th>
            <th>Zmiana</th>
        </tr>
        </thead>

        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.fullName}</td>
                <td>${user.email}</td>
                <td>${user.active}</td>
                <td>
                    <a href="/users/update/${user.id}" class="btn btn-outline-warning">edytuj</a>
                </td>
                <!--
            <td>
                <a href="#" onclick="confirmDelete(${user.id}, '${user.fullName}')">skasuj</a>
            </td>
            -->
            </tr>
        </c:forEach>

    </table>

</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>
