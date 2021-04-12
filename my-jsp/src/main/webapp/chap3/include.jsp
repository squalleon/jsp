<%@ page contentType="text/html; charset=euc-kr" %>

<%
  out.print("include 액션 호출 전입니다. <BR>"); 
%>

<jsp:include page="bottom.jsp" flush="false" />

<%
  out.print("include 액션 호출 후입니다. <BR>"); 
%>