<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int score = 70;

  if(score >= 70) {
    if(score == 100) {
	  out.print("�հ��߽��ϴ�. <BR>");
	  out.print("�����Դϴ�. <BR>");
	} else {
	  out.print("�հ��߽��ϴ�. <BR>");
	  out.print("������, ������ �ƴմϴ�. <BR>");
	}
  } else {
    out.print("���հ��߽��ϴ�. <BR>");
  }
%>