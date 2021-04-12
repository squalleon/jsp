<%@ page contentType="text/html; charset=euc-kr" %>

<%
  for(int i=0; i<=10; i++) {
    /* i를 2로 나누었을 때 나머지가 0이면 즉, 짝수이면 continue 구문 이후 문장을
       수행하지 않고 증감한 후에 제어를 다시 for 문으로 옮긴다. */
    if(i%2 == 0)
      continue;

    out.print(i + "<BR>");
  }
%>