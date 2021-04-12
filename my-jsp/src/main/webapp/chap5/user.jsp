<%@ page contentType="text/html; charset=euc-kr"%> 
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="info" scope="page" class="key.user" /> 
<jsp:setProperty name="info" property="name" /> 
<jsp:setProperty name="info" property="num" param="id" />
<HTML>
<BODY>
<CENTER>
 <TABLE border=0 width=300 >
  <FORM method="POST">
   <TR>
    <TH bgcolor=#996699 colspan=2>
     <FONT color=white size=+1>JSP Beans테스트</FONT>
    </TH>
   </TR>
   <TR>
    <TH width=20% bgcolor=#BB6699 width=40% >
     <FONT color=white size=-1>이름</FONT>
    </TH>
    <TD bgcolor=#99ccff width=60%>
     <INPUT type=text name="name" value=<%=info.getname()%> size=10>
    </TD>
   </TR>
   <TR>
    <TH width=40% bgcolor=#BB6699 >
     <FONT color=white size=-1>학번</FONT>
    </TH>
    <TD bgcolor=#99ccff>
     <INPUT type=text name="id" value=<%=info.getnum()%>  size=10>
    </TD>
   </TR>
   <TR>
    <TD colspan=2>
     <INPUT type=submit value=" 보내기 "  >
     <INPUT type=reset value=" 다시쓰기 " >
    </TD>
   </TR>
  </FORM>
 </TABLE>
</CENTER>
<jsp:include page="setget.jsp" />
</BODY>
</HTML>