<%@ page contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE>HTML �±� ����ϱ�</TITLE>
</HEAD>
<BODY>

<%
  int a=100;
  out.print("�̰������� �ڹ� �ڵ带 ����� �� �ִ�.<BR>"); 
%>

HTML �±׸� ����ؼ� ���� �ٲ� �� �ִ�.<BR>

<%
  out.print("���� a�� ���� : " + a + "<P>");
  out.print("\'out.print()\' �޼ҵ� ������ HTML �±� ����� �����ϴ�. <BR>");
%>

<%="<B> ��¹������� �翬�� HTML �±׸� ����� �� �ִ�.</B>" %>

</BODY>
</HTML>