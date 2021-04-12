<%@ page contentType="text/html; charset=EUC-KR" %> 
<HTML>
<BODY>
<H3>  session 테스트 </H3>
<%
session = request.getSession();
String[] a = session.getValueNames();
out.println("세션 ID : "+ session.getId()+"<BR>");
out.println("세션 유지 시간 : "+session.getMaxInactiveInterval()+"<BR>"); 
if(a.length == 0) {
 session.putValue(session.getId(), "A");
}else{
 String what = (String)session.getValue(a[0]);
 out.println("이름 :"+a[0]+ " 값:"+what+"<BR>");
 session.putValue(session.getId(), what+"A");
}
%>
<A href=test.jsp>다시 읽기 </A>
</BODY>
</HTML>