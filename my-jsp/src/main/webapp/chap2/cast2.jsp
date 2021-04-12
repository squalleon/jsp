<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i=5;
  float f;

  //정수형을 실수형으로 확대 변환시 값의 손실이 나타나지 않는다.
  f=(float)i;

  out.print("int형 5를 float형으로 강제 형 변환하면 : " + f);  
%>