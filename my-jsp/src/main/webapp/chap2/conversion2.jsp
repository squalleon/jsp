<%@ page contentType="text/html; charset=euc-kr" %>

<% 
  int a=10, b=20, c;
  float fa=10.5f, fb=20.0f, fc;

  //������ ������ ����� ���������� �ڵ� �� ��ȯ �ȴ�.
  c=a+'A'; 
  out.print("c�� ���� : " + c + "<P>");

  //������ ������ ����� ����� �������� �ȴ�.
  c=a+b;
  out.print("c�� ���� : " + c + "<P>");

  //������ �Ǽ�, �Ǽ��� ���� �Ǵ� �Ǽ����� ����� �Ǽ������� �ڵ� �� ��ȯ �ȴ�.
  fc=a+fb;
  out.print("fc�� ���� : " + fc + "<P>");

  fc=fb+a;
  out.print("fc�� ���� : " + fc + "<P>");

  fc=fa+fb;
  out.print("fc�� ���� : " + fc + "<P>");
%>