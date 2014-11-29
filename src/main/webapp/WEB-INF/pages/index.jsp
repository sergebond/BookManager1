<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Book Manager</title>
</head>
<body>
<div>
  <h1>BookManager</h1>
  <c:if test = "${!empty books}">
    <table>
        <tr>
            <th>Name</th>
            <th>Genre</th>
        </tr>
        <c:forEach items = "${books}" var = "book">
            <tr>
                <td>${book.name}</td>
                <td>${book.genre}<td>
            </tr>
        </c:forEach>
    </table>
  </c:if>
</div>
</body>
</html>
