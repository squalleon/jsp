<%@ page contentType="text/html; charset=euc-kr" %>

<%
  // 3�� 2���� ������ �迭�� ����� �ʱ�ȭ
  String[][] list = {
    {"ȫ�浿", "hong@mail.net"},
    {"�̼���", "lee@sun.net"},
    {"������", "kang@art.co.kr"}
  };
 
  out.print(list[0][0] + "�� �����ּҴ� : " + list[0][1] + "<BR>");
  out.print(list[1][0] + "�� �����ּҴ� : " + list[1][1] + "<BR>");
  out.print(list[2][0] + "�� �����ּҴ� : " + list[2][1] + "<BR>");
%>