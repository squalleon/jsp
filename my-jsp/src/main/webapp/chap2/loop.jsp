<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i=0;
  //while ���ǹ��� 'true' ���� ������ ���� �ݺ��Ѵ�.
  while(true) {  
    i++;
    
    //���� �ݺ��� �����ϱ� ���� break���� �̿��Ѵ�.
    if(i>10)
      break;

    out.print(i + "�� �ݺ��մϴ�.<BR>");
  }
%>