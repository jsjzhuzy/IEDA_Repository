<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/change_2" method="post">
    <input type="hidden" name="id" value="${uuu.id}"/>
    <input type="hidden" name="name" value="${uuu.name}"/>
    <input type="hidden" name="grade" value="${uuu.grade}"/>
    <input type="hidden" name="password" value="${uuu.password}"/>
    <table>
        <tr>
            <td>旧密码:</td>
            <td><input type="text" name="oldpwd" /></td>
        </tr>
        <tr>
            <td>新密码:</td>
            <td><input type="text" name="newpwd" /> </td>
        </tr>
    </table>
    <input type="submit" value="确定">
</form>
</body>
</html>