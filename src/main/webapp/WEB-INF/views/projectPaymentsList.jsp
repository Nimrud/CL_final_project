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

<br><br>

<%@include file="/WEB-INF/fragments/header.jspf" %>

<div class="container">

    <header>Lista wszystkich płatności w projekcie</header>

    <div class="row">
        <div class="form-group col-md-6">
            <table class="table-hover table-bordered" width="80%">
                <thead class="table-secondary">
                <tr align="center">
                    <th>Numer projektu</th>
                </tr>
                </thead>
                <tr align="center">
                    <td>${project.projNumber}</td>
                </tr>
            </table>
        </div>

        <div class="form-group col-md-6">
            <table class="table-hover table-bordered" width="80%">
                <thead class="table-secondary">
                <tr align="center">
                    <th>Tytuł projektu</th>
                </tr>
                </thead>
                <tr>
                    <td align="center">${project.name}</td>
                </tr>
            </table>
        </div>
    </div>

    <br>

    <div class="row">
        <div class="form-group col-md-6">
            <table class="table-hover table-bordered" width="80%">
                <thead class="table-secondary">
                <tr align="center">
                    <th width="30%">Płatność</th>
                    <th width="30%">Data płatności</th>
                    <th colspan="2">Edycja</th>
                </tr>
                </thead>

                <c:forEach items="${payments}" var="payment">
                    <tr>
                        <td align="right" width="80">${payment.amount}</td>
                        <td align="right">${payment.paymentDate}</td>
                        <td align="center">
                            <a href="/payments/update/${payment.id}" class="btn btn-outline-warning">edytuj</a>
                        </td>
                        <td align="center">
                            <a href="#" onclick="confirmDelete(${payment.id}, '${payment.amount}')"
                               class="btn btn-outline-danger">skasuj</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <div class="form-group col-md-6">
            <table class="table-hover table-bordered" width="80%">
                <thead class="table-secondary">
                <tr align="center">
                    <th>Suma płatności w projekcie</th>
                </tr>
                </thead>
                <tr align="center">
                    <td>${allPaymentsInProject}</td>
                </tr>
            </table>

            <table class="table-hover table-bordered" width="80%">
                <thead class="table-secondary">
                <tr align="center">
                    <th>Dofinansowanie</th>
                </tr>
                </thead>
                <br>

                <tr align="center">
                    <td>${project.dotation}</td>
                </tr>
            </table>

            <table class="table-hover table-bordered" width="80%">
                <thead class="table-secondary">
                <tr align="center">
                    <th>Zaawansowanie finansowe</th>
                </tr>
                </thead>
                <br>

                <tr align="center">

                    <td>
                        ${allPaymentsInProject*100/project.dotation}%
                    </td>
                </tr>
            </table>

        </div>
    </div>
</div>

<%@include file="/WEB-INF/fragments/footer.jspf" %>

</body>
</html>

