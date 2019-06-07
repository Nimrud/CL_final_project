<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 05.06.19
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista projektów</title>

    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>

<table border="1">
    <tr align="center">
        <th>PO</th>
        <th>Numer proj.</th>
        <th>Numer DoRIS</th>
        <th>Rezultat</th>

        <th>Beneficjent</th>
        <th>Beneficjent - dane kontaktowe</th>
        <th>Beneficjent - koordynator 1</th>
        <th>Beneficjent - koordynator 2</th>

        <th>Nazwa projektu</th>
        <th>Predefiniowany</th>
        <th>Region</th>
        <th>Data podpisanie umowy</th>
        <th>Kwalifikowalność od</th>
        <th>Rozpoczęcie projektu</th>
        <th>Koniec projektu</th>

        <th>Koszt całkowity</th>
        <th>Koszt kwalifikowalny</th>
        <th>Dofinansowanie</th>
        <!-- <th>Dofinansowanie po zmiananch</th> -->
        <th>Kwota wypłacona/zatwierdzona</th>
        <th>Jako % kwoty dofinans.</th>
        <th>Kurs EUR/PLN</th>
        <th>Koordynator NFOŚiGW</th>
        <th>Status projektu</th>

        <th>Zmiana</th>
    </tr>

    <c:forEach items="${projects}" var="project">
        <tr>
            <td>${project.programme}</td>
            <td>${project.projNumber}</td>
            <td>${project.dorisNumber}</td>
            <td>${project.outcome}</td>

            <td>${project.beneficiary.name}</td>
            <td>${project.beneficiary.benAddressAndContact}</td>
            <td>${project.beneficiary.benCoord1Info}</td>
            <td>${project.beneficiary.benCoord2Info}</td>

            <td>${project.name}</td>
            <td>${project.predefined}</td>
            <td>${project.region}</td>
            <td>${project.signedDate}</td>
            <td>${project.qualifiedFrom}</td>
            <td>${project.startDate}</td>
            <td>${project.finishDate}</td>

            <td>${project.projectValue}</td>
            <td>${project.qualifiedCost}</td>
            <td>${project.dotation}</td>
            <!-- <td>${project.dotationAdjusted}</td> -->
            <td>[wypłacone - do uzup.]</td>
            <td>[% dofinans. - do uzup.]</td>
            <td>${project.currencyrateEUR}</td>
            <td>${project.coordinator.coordinatorInfo}</td>
            <td>${project.status}</td>

            <td>
                <a href="/projects/update/${project.id}">edytuj</a>
            </td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
