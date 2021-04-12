<%@ page contentType="text/html; charset=euc-kr" %>

<% 
  int a=10, b=20, c;
  float fa=10.5f, fb=20.0f, fc;

  //정수와 문자의 연산시 정수형으로 자동 형 변환 된다.
  c=a+'A'; 
  out.print("c의 값은 : " + c + "<P>");

  //정수와 정수의 연산시 결과는 정수형이 된다.
  c=a+b;
  out.print("c의 값은 : " + c + "<P>");

  //정수와 실수, 실수와 정수 또는 실수간의 연산시 실수형으로 자동 형 변환 된다.
  fc=a+fb;
  out.print("fc의 값은 : " + fc + "<P>");

  fc=fb+a;
  out.print("fc의 값은 : " + fc + "<P>");

  fc=fa+fb;
  out.print("fc의 값은 : " + fc + "<P>");
%>