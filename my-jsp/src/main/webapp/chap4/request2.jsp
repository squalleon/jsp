<%@ page contentType="text/html; charset=euc-kr" %>

<%
  String FormData = request.getParameter("data");

  out.print("웹 브라우저에서 받은 데이터 : " + FormData );
%>