<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i=0;

  //while�� ���ǹ��� 'true' ���� �־� ���� �ݺ��Ѵ�.
  while(true) {  
    //���� ���� i�� ���� 10�̸� break���� ���� for���� �����.
    if(i==10)    
      break;
    
    i++;

    out.print(i + "�� ���� <BR>");
  }
  
  out.print("while���� ������ϴ�.<BR>");
%>