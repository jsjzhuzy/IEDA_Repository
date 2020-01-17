<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/16
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/change" method="post">
    <input type="hidden" name="id" value="${stu.id}"/>
    <input type="hidden" name="password" value="${stu.password}"/>
    <table>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name" value="${stu.name}"  disabled/></td>
        </tr>
        <tr>
            <td>分数:</td>
            <td><input type="text" name="grade" /> </td>
        </tr>
    </table>
    <input type="submit" value="确定">
</form>
</body>
</html>
