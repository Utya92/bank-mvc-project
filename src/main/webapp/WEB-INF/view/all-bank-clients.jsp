<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bank Clients</title>
</head>
<body>
<h2>ALL CLIENTS</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Bank_account</th>
        <th>Type_of_card</th>
        <th>Functions</th>
    </tr>
    <c:forEach var="i" items="${allClientsAttribute}">
        <c:url var="updButton" value="/updateClient">
            <c:param name="clientId" value="${i.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteClient">
            <c:param name="clientId" value="${i.id}"/>
        </c:url>
        <tr>
            <td>${i.name}</td>
            <td>${i.surname}</td>
            <td>${i.bankAccount}</td>
            <td>${i.typeOfCard}</td>
            <td>
                <input type="button" value="update"
                       onclick="window.location.href='${updButton}'">
                <input type="button" value="delete"
                       onclick="window.location.href='${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<br>
<input type="button" value="Add" onclick="window.location.href='/add'"/>
</body>
</html>
