<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/10/2022
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            border: 1px solid#000;
        }
        th,td{
            border: 1px dotted #555;

        }

    </style>
</head>
<body>
<table>
<caption>Students List</caption>
<thead>
<tr>
    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Address</th>
</tr>
</thead>
<tbody>
<c:forEach var="st" items="${requestScope.students}">
    <tr>
    <td>
    <c:out value="${st.id}"/>
    </td>
        <td>
            <a href="detail/${st.id}">${st.name}</a>
        </td>
        <td>
            <c:out value="${st.email}"/>
        </td>
        <td>
            <c:out value="${st.address}"/>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>

</body>
</html>
