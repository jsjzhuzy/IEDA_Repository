<%@ page import="com.test.domain.User" %>
<jsp:directive.page import="java.util.List" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/16
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success</title>
    <link rel="stylesheet" type="text/css" href="css/login.css" />
</head>
<body>
<div class="main-login">
<div class="login-content">
    <table border="1px" id="ta" border="1">
        <tr>
            <td>id</td>
            <td>姓名</td>
            <td>成绩</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${listt}" var="lis">
        <tr>
            <td>${lis.id}</td>
            <td>${lis.name}</td>
            <td>${lis.grade}</td>
            <td><a href="${pageContext.request.contextPath}/edit?id=${lis.id}">修改成绩</a><br><a href="${pageContext.request.contextPath}/del?id=${lis.id}">删除成绩</a></td>
        </tr>
        </c:forEach>
    </table>
    <a href="add.jsp">新增</a>
    <a href="login_1.jsp">退出</a>
</div>
</div>
</body>
</html>
