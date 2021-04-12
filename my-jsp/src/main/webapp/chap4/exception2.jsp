<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page isErrorPage="true" %>

<%
  out.print("에러 메시지 : " + exception.getMessage() + "<BR>");
%>