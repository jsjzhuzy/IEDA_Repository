<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/16
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生成绩查询</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div class="main-login">
<div class="login-content">
<table border="1px">
    <tr>
        <td>id</td>
        <td>姓名</td>
        <td>成绩</td>
    </tr>
    <tr>
        <td>${stuu.id}</td>
        <td>${stuu.name}</td>
        <td>${stuu.grade}</td>
    </tr>
</table>
<a href="login_1.jsp">退出</a>
<a href="${pageContext.request.contextPath}/edit_2?id=${stuu.id}">修改密码</a>
</div>
</div>
</body>
</html>
