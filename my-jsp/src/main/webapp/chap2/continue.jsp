<%@ page contentType="text/html; charset=euc-kr" %>

<%
  for(int i=0; i<=10; i++) {
    /* i�� 2�� �������� �� �������� 0�̸� ��, ¦���̸� continue ���� ���� ������
       �������� �ʰ� ������ �Ŀ� ��� �ٽ� for ������ �ű��. */
    if(i%2 == 0)
      continue;

    out.print(i + "<BR>");
  }
%>