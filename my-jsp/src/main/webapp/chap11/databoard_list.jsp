<%@ page contentType="text/html; charset=EUC-KR" %> 
<%@ page language="java" import="java.io.*,java.sql.*,java.util.*" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<HTML>
<HEAD><TITLE>�Խ���</TITLE>
<SCRIPT language="javascript">
function check(){
 with(document.msgsearch){
  if(sval.value.length == 0){
   alert("�˻�� �Է��� �ּ���!!");
   sval.focus();
   return false;
  }
  document.msgsearch.submit();
 }
}

function imgchg(p1,p2) {
 if (p2==1) 
  document.images[p1].src= "image/open.gif";
 else
  document.images[p1].src= "image/close.gif";
}
</SCRIPT>
<link href="databoard.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<center>
 <table width="600" cellspacing="0" cellpadding="4">
  <tr align="right"> 
   <td colspan="6" height="23">&nbsp; 
  </tr>
  <tr align="center"> 
   <td colspan="6" height="1" bgcolor="#1F4F8F"></td>
  </tr>
  <tr align="center" bgcolor="#87E8FF"> 
   <td width="38" bgcolor="#DFEDFF"><font size="2">��ȣ</font></td>
   <td width="259" bgcolor="#DFEDFF"><font size="2">����</font></td>
   <td width="65" bgcolor="#DFEDFF"><font size="2">�����</font></td>
   <td width="51" bgcolor="#DFEDFF"><font size="2">��¥</font></td>
   <td width="111" bgcolor="#DFEDFF"><font size="2">÷������</font></td>
   <td width="26" bgcolor="#DFEDFF"><font size="2">��ȸ</font></td>
  </tr>
  <tr align="center"> 
   <td colspan="6" bgcolor="#1F4F8F" height="1"></td>
  </tr>

<% 
 session = request.getSession(true);
 String where = request.getParameter("go");
 
 Vector name=new Vector();
 Vector inputdate=new Vector();
 Vector email=new Vector();
 Vector subject=new Vector();
 Vector rcount=new Vector();
 Vector keyid=new Vector();
 Vector step=new Vector();
 Vector fname=new Vector();
 String url = "http://localhost:8080/jsp/chap11/upload/";
 String finame=null;
 int stepcount=0;
 int count=0;
 int start=0;
 int end=0;
 int maxrows=10;
 int totalrows=0;
 int totalpages=0;
 int j=0;
 int totalgroup=0;
 int maxpages=10;
 int startp=0;
 int endp=0;
 int cg=0;
 int id=0;
 Integer i=(Integer)session.getValue("cp");
 
 if (where !=null) { 
  cg = (i.intValue()-1)/maxpages + 1;
  if (where.equals("N")) {
   startp = cg * maxpages +1;  
   endp= startp + maxpages -1;
   count=startp; 
   cg += 1;
  } else if (where.equals("P")) { 
   startp = (cg-2) * maxpages +1; 
   cg -= 1;
   if (startp <= 0) {
    startp =1;
    cg=1;
   }  
   endp= startp + maxpages -1;
   count=startp; 
  }else {
   startp = (cg-1) * maxpages +1;  
   endp= startp + maxpages -1;
   count=Integer.parseInt(where);
  }
 } else {
  startp = 1;  
  endp= startp + maxpages -1;
  count = startp;
  cg=1;
 }

 session.putValue("cp", new Integer(count));
 String em=null;
 Connection conn= null;
 Statement st =null;
 ResultSet rs =null;
 
 try {
  Class.forName("com.mysql.cj.jdbc.Driver");
 } catch (ClassNotFoundException e ) {
  out.println(e);
 }
 
 try{
  conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dboard?useUnicode=true&characterEncoding=euckr","root","password");
 } catch (java.sql.SQLException e) {
  out.println(e);
 }
 
 try {
  st = conn.createStatement();
  String sqltext= "select * from databoard order by masterid desc,replynum asc,step desc, id asc" ;
  rs = st.executeQuery(sqltext);
 
  if (!(rs.next()))  {
   out.println("�ڷ�ǿ� �ø� ���� �����ϴ�");
  } else {
   do {
    keyid.addElement(new Integer(rs.getInt("id")));
    name.addElement(rs.getString("name"));
    email.addElement(rs.getString("email"));
    subject.addElement(rs.getString("subject"));
    String idate = rs.getString("inputdate");
    idate = idate.substring(0,8);
    inputdate.addElement(idate);
    rcount.addElement(new Integer(rs.getInt("readcount")));
    step.addElement(new Integer(rs.getInt("step")));
    fname.addElement(rs.getString("filename"));
   }while(rs.next());
   totalrows = name.size();
   totalpages = (totalrows-1)/maxrows +1;
   totalgroup = (totalpages-1)/maxpages +1;
   if (startp > totalpages) {
    startp = (totalgroup-1) * maxpages +1;  
    endp= startp + maxpages -1;
    count=startp;
    session.putValue("cp", new Integer(count));
   } 
   if (endp > totalpages) {
    endp=totalpages;
   } 
          
   start = count * maxrows - maxrows;
   end = start+maxrows;
   if (end > totalrows) {
    end=totalrows;
   } 
   for(j=start;j<end;j++) {
    String temp=(String)email.elementAt(j);
    if (temp != null && temp !="") {
     em = "<A href=mailto:" ;
     em = em + temp ;
     em = em + ">" + name.elementAt(j) ;
     em = em + "</A>";
    }  
    finame=(String)fname.elementAt(j);
    if(finame.length() != 0)
     finame = "<A href=down.jsp?file="+finame+">"+finame+"</A>";
    id= totalrows-j;
    if(j%2 == 0){
     out.println("<tr align='center' bgcolor='#FFFFFF' onMouseOver=\"bgColor='#DFEDFF'\" onMouseOut=\"bgColor=''\">");	
    }else{
     out.println("<tr align='center' bgcolor='#F4F4F4' onMouseOver=\"bgColor='#DFEDFF'\" onMouseOut=\"bgColor='#F4F4F4'\">");
    } 
    out.println("<TD>");
    out.println(id+"</TD>");
    out.println("<TD align=left>");
    Integer stepi= (Integer)step.elementAt(j);
    int imgcount = j-start; 
    if (stepi.intValue()> 0 ) {
     for(stepcount=0; stepcount < stepi.intValue(); stepcount++)
      out.print("&nbsp;&nbsp;");
     out.println("<img src='image/arrow.gif'>");
    }
    out.println("<IMG name=icon"+ imgcount +" src=image/close.gif>");
    out.print("<A href=\"databoard_read.jsp?id=");
    out.print(keyid.elementAt(j) + "&page=" + session.getValue("cp")+"\"" );
    out.print(" onmouseover=\"imgchg('icon" + imgcount + "',1)\"");
    out.print(" onmouseout=\"imgchg('icon" + imgcount + "',2)\">");
    out.println(subject.elementAt(j) + "</A></TD>");
    out.println("<TD>");
    if (em != null) {
     out.println(em+ "</TD>");
    } else {
     out.println(name.elementAt(j)+ "</TD>");
    }
    out.println("<TD>");
    out.println(inputdate.elementAt(j)+ "</TD>");
    out.println("<TD>");
    out.println(finame + "</TD>");
    out.println("<TD>");
    out.println(rcount.elementAt(j)+ "</TD>");
    out.println("</TR>"); 
   }
   out.println("<tr align='center'>");
   out.println("<td colspan='6' height='1' class='button'></td>");
   out.println("</tr>");
   out.println("<tr align='center'>");
   out.println("<td colspan='6' height='1' bgcolor='#1F4F8F'></td>");
   out.println("</tr>");              
 
   out.println("<tr align='center'>");
   out.println("<td colspan='6' style='padding:10 0 0 0'>");
   if (cg > 1) {
    out.println("[<A href=\"databoard_list.jsp?go=P\">����</A>]");
   } else {
    out.println("[����]") ;
   }
   int  jj = startp;
   while (jj <= endp)  {
    if (jj != count) {
     out.println("[<A href=\"databoard_list.jsp?go="+jj+"\">" + jj + "</A>]") ;
    } else {
     out.println("[" + jj + "]") ;
    }
    jj += 1 ;
   } 
   if (cg < totalgroup) {
    out.println("[<A href=\"databoard_list.jsp?go=N\">����</A>]");
   } else {
    out.println("[����]");
   }
   out.println ("��ü �ۼ� :"+totalrows); 
   out.println("</tr></table>");
  }

  rs.close();
  st.close();
  conn.close();
 } catch (java.sql.SQLException e) {
  out.println(e);
 } 
%>

<FORM method="post" name="msgsearch" action="databoard_search.jsp">
 <TABLE border=0 width=600 cellpadding=0 cellspacing=0>
  <TR>
   <TD align=right width="241"> 
    <SELECT name=stype >
     <OPTION value=1 >�̸�
     <OPTION value=2 >����
     <OPTION value=3 >����
     <OPTION value=4 >�̸�+����
     <OPTION value=5 >�̸�+����
     <OPTION value=6 >����+����
     <OPTION value=7 >�̸�+����+����
     <OPTION value=8 >�����̸�
    </SELECT>
   </TD>
   <TD width="127" align="center">
    <INPUT type=text size="17" name="sval" >
   </TD>
   <TD width="115"><a href="#" onClick="check();"><img src="image/serach.gif" border="0"></A></TD>
   <TD align=right valign=bottom width="117"> <A href="databoard_write.htm"><img src="image/write.gif" border="0"></A></TD>
  </TR>
 </TABLE>
</FORM>
</BODY>
</HTML>