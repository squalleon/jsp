<%@ page contentType="text/html; charset=euc-kr" %>
<%
  int a=5, b=10;
  boolean what;
  boolean c = true, d = false;
  
  out.print("a�� ���� : " + a + " b�� ���� : " + b + "<P>");
  out.print("a < b �� ���� : " + (a<b) + "<P>");
  out.print("a <= b �� ���� : " + (a<=b) + "<P>");
  out.print("a == b �� ���� : " + (a==b) + "<P>");
  out.print("a > b �� ���� : " + (a>b) + "<P>");
  out.print("a >= b �� ���� : " + (a>=b) + "<P>");
  out.print("c�� ���� : " + c + " d�� ���� : " + d + "<P>");
  out.print("c && d �� ���� : " + (c&&d) + "<P>");
  out.print("c || d �� ���� : " + (c||d) + "<P>");
  what=a>b? true:false;
  out.print("a>b? " + what + ", !(a>b)=" + !what);
%>