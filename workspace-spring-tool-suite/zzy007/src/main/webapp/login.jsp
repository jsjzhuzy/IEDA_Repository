<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登录后台管理系统</title>
<link href="css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<script type="text/javascript">

 
</script>
<div class="main-login">

	<div class="login-content">	
	<h2>用户登录</h2>
	
    <form action="${pageContext.request.contextPath}/login" method="post" id="login-form" name="login-form">
    <div class="login-info">
	<span class="user">&nbsp;</span>
	<input name="name" id="name" type="text"  value="" class="login-input"/>
	</div>
    <div class="login-info">
	<span class="pwd">&nbsp;</span>
	<input name="password" id="password" type="password"  value="" class="login-input"/>
	</div>
    <div class="login-oper">
	<input style="margin:1px 10px 0px 2px; float:left;" name="" type="checkbox" value="" checked="checked" /><span>记住密码</span>
	</div>
    <div class="login-oper">
	<input name="" type="submit" value="登 录" class="login-btn"/>
	
	</div>
    </form>
    
    </div>
   
</div>   


</body>
</html>