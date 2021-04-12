<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i, sum;
  i = sum = 0;

  while(i < 10) {
    // 변수 i를 증가시키는 구문이 제외되면 무한 반복에 빠지게 되므로 주의한다.
    // i++;  
    sum = sum + i;

    out.print("반복횟수 : " + i + "  지금까지의 합 : " + sum + "<BR>");        
  }
%>