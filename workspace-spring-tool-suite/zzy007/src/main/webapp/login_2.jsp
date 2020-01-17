<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8" />
    <title>成绩查询系统登陆</title>
    <link rel="stylesheet" type="text/css" href="./css/login.css" />
</head>
<body>
<div class="main-login">
<div class="login-content">
<form action="${pageContext.request.contextPath}/login_teacher" method="post" id="login_form" name="loginform">
    <div class="login-info">
        <span>账户：</span>
        <input type="text" name="name" class="login-input"/>
    </div>
    <div class="login-info">
        <span>密码：</span>
        <input type="password" name="password" class="login-input"/>
    </div>
    <div class="login-oper">
        <input type="submit" value="登陆" class="login-btn">
    </div>
</form>
</div>
</div>
</body>
</html>
