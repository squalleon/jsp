<%@ page contentType="text/html; charset=euc-kr" %>

<%
  // 3�� 2���� ������ �迭 ����
  String[][] list = new String[3][2];

  list[0][0] = "ȫ�浿";
  list[0][1] = "hong@mail.net";

  list[1][0] = "�̼���";
  list[1][1] = "lee@sun.net";

  list[2][0] = "������";
  list[2][1] = "kang@abc.co.kr";

  out.print(list[0][0] + "�� �����ּҴ� : " + list[0][1] + "<BR>");
  out.print(list[1][0] + "�� �����ּҴ� : " + list[1][1] + "<BR>");
  out.print(list[2][0] + "�� �����ּҴ� : " + list[2][1] + "<BR>");
%>