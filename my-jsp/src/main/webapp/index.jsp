<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<%--<a href="hello-servlet">Hello Servlet</a>--%>

<form action="LoginProc.do" method="post">
    <table width="300" border="1">
        <tr>
            <td width="120">아이디</td>
            <td width="180">
                <input type="text" name="id">
            </td>
            <td width="120">패스워드</td>
            <td width="180">
                <input type="password" name="password">
            </td>
        <tr height="40">
            <td align="center" colspan="2">
                <input type="submit" value="로그인">
            </td>
        </tr>
    </table>
</form>

</body>
</html>