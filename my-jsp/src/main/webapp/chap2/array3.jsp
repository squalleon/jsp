<%@ page contentType="text/html; charset=euc-kr" %>

<%
  //�迭�� �����ϸ鼭 1���� 10������ ������ �ʱ�ȭ
  int number[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}; 

  //�迭�� ����, ��ü ���� �׸��� �ʱ�ȭ 
  String[] season = new String[] {"��","����","����","�ܿ�"};
  
  //�迭�� ��ü�� ������ �� �ε����� �̿��Ͽ� �� �迭 ��ҿ� ���� ����
  String[] fruit = new String[3];
  fruit[0] = "�ٳ���";
  fruit[1] = "���";
  fruit[2] = "Ű��";

  out.print("�����ϴ� ���ڴ� : " + number[8] + "<BR>");
  out.print("�����ϴ� ������ : " + season[0] + "<BR>");
  out.print("�����ϴ� ������ : " + fruit[2] + "<BR>");

  //�迭�� ���̴� length �Ӽ��� �̿��Ͽ� ���� �� �ִ�.
  out.print("�迭 number[]�� ���̴� : " + number.length);
%>