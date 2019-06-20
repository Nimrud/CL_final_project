<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 07.06.19
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista wszystkich płatności w projekcie</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <script>
        function confirmDelete(id, amount) {
            if (confirm("Czy na pewno chcesz skasować płatność w wysokości: '" + amount + "'?")) {
                window.location.href = "/payments/delete/" + id;
            }
        }
    </script>

</head>
<body>

<br>

<table border="1">
    <tr>
        <th>Numer projektu</th>
    </tr>
    <tr>
        <td>${project.projNumber}</td>
    </tr>
</table>

<br>

<table border="1">
    <tr>
        <th>Tytuł projektu</th>
    </tr>
    <tr>
        <td>${project.name}</td>
    </tr>
</table>

<br>

<table border="1">
    <tr align="center">
        <th>Płatność</th>
        <th>Data płatności</th>
        <th colspan="2">Edycja</th>
    </tr>

    <c:forEach items="${payments}" var="payment">
        <tr>
            <td align="right" width="80">${payment.amount}</td>
            <td align="right">${payment.paymentDate}</td>
            <td>
                <a href="/payments/update/${payment.id}">edytuj</a>
            </td>
            <td>
                <a href="#" onclick="confirmDelete(${payment.id}, '${payment.amount}')">skasuj</a>
            </td>
        </tr>
    </c:forEach>

</table>

<br>

<table border="1">
    <tr>
        <th>Suma płatności w projekcie</th>
    </tr>
    <tr>
        <td>${allPaymentsInProject}</td>
    </tr>
</table>

</body>
</html>

