<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int a=10, b=20;

  if(a >= b) 
    out.print("a가 b보다 크다. <BR>");  //조건이 참이면 이 문장이 수행된다.
  else
    out.print("a가 b보다 작다. <BR>");  //조건이 거짓이면 이 문장이 수행된다.    

  out.print("if문을 벗어났습니다.");
%>