<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i, sum;
  i = sum = 0;

  while(i < 10) {
    // ���� i�� ������Ű�� ������ ���ܵǸ� ���� �ݺ��� ������ �ǹǷ� �����Ѵ�.
    // i++;  
    sum = sum + i;

    out.print("�ݺ�Ƚ�� : " + i + "  ���ݱ����� �� : " + sum + "<BR>");        
  }
%>