<%@ page contentType="text/html; charset=euc-kr" %>

<%
  String FormData = request.getParameter("data");

  out.print("�� ���������� ���� ������ : " + FormData );
%>