<%@ page contentType="text/html; charset=euc-kr" %>

<%
  String userId = request.getParameter("id");
  String userPasswd = request.getParameter("passwd");

  String sessionId = session.getId();
  int sessionTime = session.getMaxInactiveInterval();

  out.print(userId + " �� ȯ���մϴ�.<P>");
  out.print("������ ���� ID : " + sessionId + "<P>");
  out.print("���� ���� �ð� : " + sessionTime); 
%>