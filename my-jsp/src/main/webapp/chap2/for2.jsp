<%@ page contentType="text/html; charset=euc-kr" %>

<%
  for(int i=1; i<=10; i++) { 
    for(int j=1; j<=i; j++) {
      out.print(" * ");
    }
    out.print("<BR>");
  }
%>