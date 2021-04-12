<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i=0;

  //while의 조건문에 'true' 값을 넣어 무한 반복한다.
  while(true) {  
    //만약 변수 i의 값이 10이면 break문에 의해 for문을 벗어난다.
    if(i==10)    
      break;
    
    i++;

    out.print(i + "번 수행 <BR>");
  }
  
  out.print("while문을 벗어났습니다.<BR>");
%>