<%@ page contentType="text/html; charset=euc-kr" %>

<%
  request.setCharacterEncoding("euc-kr");

  String FormData = request.getParameter("data");

  out.print("�� ���������� ���� ������ : " + FormData );
%>