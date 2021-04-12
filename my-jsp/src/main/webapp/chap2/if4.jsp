<%@ page contentType="text/html; charset=euc-kr" %>

<%
  int score = 70;

  if(score >= 70) {
    if(score == 100) {
	  out.print("합격했습니다. <BR>");
	  out.print("만점입니다. <BR>");
	} else {
	  out.print("합격했습니다. <BR>");
	  out.print("하지만, 만점은 아닙니다. <BR>");
	}
  } else {
    out.print("불합격했습니다. <BR>");
  }
%>