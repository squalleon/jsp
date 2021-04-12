<%@ page contentType="text/html; charset=euc-kr" %>

<% 
  int i='A';   //정수형 변수 i에 문자 'A'를 대입하면 정수 65로 자동 형 변환 된다.
  float f=10;  //실수형 변수 f에 정수 10을 대입하면 실수 10.0f로 자동 형 변환 된다.

  out.print("i의 값은 : " + i + "<BR>");
  out.print("f의 값은 : " + f);
%>