<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int i, sum;
  i = sum = 0;

  do {
    // �� ����� ������ ����ȴ�.
    i++;
    sum = sum + i;

    out.print("�ݺ�Ƚ�� : " + i + "  ���ݱ����� �� : " + sum + "<BR>");        
  } while(i > 10);  // ���ǽ��� ���ؼ� ���� ��츸 �ݺ��� ��� �����Ѵ�.
%>