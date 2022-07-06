<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html>
<body>

<h2> All Employees </h2>

<br>

<table>
    <tr>
        <th>Name</th>
        <th>LastName</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="emp" items="${allEmp}">

        <c:url var="updateButton" value="/updateEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>


        <tr>
            <td>${emp.name}</td>
            <td>${emp.lastName}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="UPDATE"
                       onclick="window.location.href = '${updateButton}'"/>
                <input type="button" value="DELETE"
                       onclick="window.location.href = '${deleteButton}'"/>

            </td>
        </tr>

    </c:forEach>

</table>
<br>

<input type="button" value="Add"
       onclick="window.location.href = 'addNewEmployee'"/>


</body>


</html>
