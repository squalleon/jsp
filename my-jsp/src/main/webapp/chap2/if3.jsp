<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int score = 83, i;
  i = score/10;

  if(i==10) { 
    out.print("�����Դϴ�. <BR>");
    out.print("�����ϼ̽��ϴ�. <BR>");
  } else if(i==9) {
    out.print("90�����Դϴ� <BR>");
    out.print("���ݸ� �� ����ϼ���. <BR>");
  } else if(i==8) {
    out.print("80�����Դϴ�. <BR>");
    out.print("������ �ϼ���. <BR>");
  } else {
    out.print("80���� �̸��Դϴ�. <BR>");
    out.print("���� ����ϼ���. <BR>");    
  }
%>