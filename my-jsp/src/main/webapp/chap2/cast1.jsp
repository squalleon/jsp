<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i;
  float pi=3.14f;

  //실수형을 정수형으로 축소 변환시 값의 손실이 일어난다.
  i=(int)pi;

  out.print("float형 3.14f를 int형으로 강제 형 변환하면 : " + i);  
%>