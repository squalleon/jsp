<%@ page contentType="text/html; charset=EUC-KR" %> 
<HTML>
<BODY>
<H3>  session �׽�Ʈ </H3>
<%
session = request.getSession();
String[] a = session.getValueNames();
out.println("���� ID : "+ session.getId()+"<BR>");
out.println("���� ���� �ð� : "+session.getMaxInactiveInterval()+"<BR>"); 
if(a.length == 0) {
 session.putValue(session.getId(), "A");
}else{
 String what = (String)session.getValue(a[0]);
 out.println("�̸� :"+a[0]+ " ��:"+what+"<BR>");
 session.putValue(session.getId(), what+"A");
}
%>
<A href=test.jsp>�ٽ� �б� </A>
</BODY>
</HTML>