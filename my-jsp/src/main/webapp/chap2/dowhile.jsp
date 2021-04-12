<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i, sum;
  i = sum = 0;

  do {
    // 이 블록은 무조건 실행된다.
    i++;
    sum = sum + i;

    out.print("반복횟수 : " + i + "  지금까지의 합 : " + sum + "<BR>");        
  } while(i > 10);  // 조건식을 비교해서 참일 경우만 반복을 계속 수행한다.
%>