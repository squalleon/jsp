<%@ page contentType="text/html; charset=EUC-KR" %> 
<jsp:useBean id="cnt" scope="application" class="key.counter" /> 

<%
 int count=0;
 session=request.getSession();
 session.setMaxInactiveInterval(1); 
 String first=(String)session.getValue("checkfirst");

 if (first != null) {
  count = cnt.getcount();
 } else {
  cnt.setcount();
  count = cnt.getcount();
  session.putValue("checkfirst", "first");
 }
out.println("������� �湮�� �� : "+ count);
%> 