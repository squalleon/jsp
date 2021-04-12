<%@ page contentType="text/html; charset=euc-kr" %>

<%
  out.print("out.print() 메소드를 이용해서 출력합니다.<BR>");

  //pageContext객체의 getOut() 메소드를 통해 out객체의 print()메소드를 호출한다.
  pageContext.getOut().print("pageContext.getOut() 메소드를 통해 출력합니다.<BR>"); 
%>