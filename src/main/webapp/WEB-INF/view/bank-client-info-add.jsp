<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info about Clients</title>
</head>
<body>
<h2>Info about clients</h2>
<br>
<form:form action="save" modelAttribute="addClientAttribute">
    <form:hidden path="id"/>
    Name <form:input path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br>
    <br>
    Bank_account <form:input path="bankAccount"/>
    <br>
    <br>
    Type_of_card <form:input path="typeOfCard"/>
    <br>
    <br>
    <input type="submit" value="OK">
    <br>
    <br>
</form:form>
</body>
</html>
