<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html>
<body>

<h2> Employee Info </h2>

<br>

<%--@elvariable id="employee" type="com.spring.mvc_hibernate_aop.entity.Employee"--%>
<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id"/>

    Name <form:input path="name"/>
    <br><br>
    LastName <form:input path="lastName"/>
    <br><br>
    Department <form:input path="department"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>

    <input type="submit" value="OK">





</form:form>


</body>


</html>
