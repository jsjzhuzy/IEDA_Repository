<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/add" method="post">
        <table>
            <tr>
                <td>姓名</td>
                ，                      <td>
                    <input type="text" name="name" />
                </td>
            </tr>
            <tr>
                <td>密码</td>
                ，                      <td>
                    <input type="text" name="password" />
                </td>
            </tr>
            <tr>
                <td>成绩</td>
                ，                      <td>
                    <input type="text" name="grade" />
                </td>
            </tr>            
        </table>
        <input type="submit" value="提交" />
    </form>
</body>
</html>