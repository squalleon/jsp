<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int a=5, b=5, x, y;

  out.print("변수 a의 값은 : " + a + "<P>");
  out.print("변수 b의 값은 : " + b + "<P>");

  x = a++;  //현재 a의 값인 5를 변수 x에 대입 후에, a의 값은 1 증가되어 6이 된다. 
  y = ++b;  //현재 b의 값을 먼저 1증가시켜 6이 된후에, b의 값을 y에 대입한다. 

  out.print("a++; 연산 시점에서 변수 a의 값은 : " + x + "<P>"); 
  out.print("++b; 연산 시점에서 변수 b의 값은 : " + y + "<P>");

  out.print("a++; 연산 후에 변수 a의 값은 : " + a + "<P>");
  out.print("++b; 연산 후에 변수 b의 값은 : " + b + "<P>");   
%>