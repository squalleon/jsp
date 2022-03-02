<%--
  Created by IntelliJ IDEA.
  User: spiri
  Date: 2021-04-17
  Time: 오전 4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String s1 = request.getParameter("a");
    String s2 = request.getParameter("b");
    out.println("s1="+s1);
    out.println("s2="+s2);
%>
Forward page

<%--<input type="text" name="a" value="<%request.getParameter("a")%>">
<input type="hidden" name="b" value="<%request.getParameter("b")%>">--%>
</body>
</html>
