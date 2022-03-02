<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page language="java" import="java.io.*,java.sql.*,java.util.*" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<HTML>
<HEAD>
<TITLE>�� �б�</TITLE>
<link href="databoard.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY>
<CENTER>
<%
 String sqltext=null;
 Connection conn= null;
 PreparedStatement st =null;
 ResultSet rs =null;
 int cnt=0;
 int id = Integer.parseInt(request.getParameter("id"));
 String url = "http://localhost:8080/jsp/chap11/upload/";
 
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
  sqltext = "select * from databoard where id=? ";
  st = conn.prepareStatement(sqltext);
  st.setInt(1, id);
 
  rs = st.executeQuery();
  if (!(rs.next()))  {
   out.println("�ش� ������ �����ϴ�");
  } else {
   String finame=rs.getString("filename");
   if ((finame != null) && (!(finame.equals(""))) ) {
    finame = "<A href=down.jsp?file="+finame+">" + finame + "</A>";
    finame = finame + "(" + rs.getInt("filesize") + " Bytes)";
   } 
   sqltext = "update databoard set readcount= readcount + 1" ;
   sqltext = sqltext + " where id= ?" ;
   st = conn.prepareStatement(sqltext);
   st.setInt(1, id);
   st.executeUpdate();
   sqltext = "select * from databoard where id=? ";
   st = conn.prepareStatement(sqltext);
   st.setInt(1, id);
 
   rs = st.executeQuery();
   rs.next();
   out.println("<table width='600' cellspacing='0' cellpadding='2'>");
   out.println("<tr align='right'>");
   out.println("<td height='22'>&nbsp;</tr>");
   out.println("<tr align='center'>");
   out.println("<td height='1' bgcolor='#1F4F8F'></td>");
   out.println("</tr>");
   out.println("<tr align='center' bgcolor='#DFEDFF'>");
   out.println("<td class='button' bgcolor='#DFEDFF'>"); 
   out.println("<div align='left'><font size='2'>"+rs.getString("subject") + "</div></td>");
   out.println("</tr>");
   out.println("<tr align='center' bgcolor='#FFFFFF'>");
   out.println("<td align='center' bgcolor='#F4F4F4'>"); 
   out.println("<table width='100%' border='0' cellpadding='0' cellspacing='4' height='1'>");
   out.println("<tr bgcolor='#F4F4F4'>");
   out.println("<td width='13%' height='7'></td>");
   out.println("<td width='38%' height='7'>�۾��� : "+rs.getString("name")+"</td>");
   out.println("<td width='38%' height='7'>�����̸� : "+ finame +"</td>");
   out.println("<td width='11%' height='7'></td>");
   out.println("</tr>");
   out.println("<tr bgcolor='#F4F4F4'>");
   out.println("<td width='13%'></td>");
   out.println("<td width='38%'>�ۼ��� : " + rs.getString("inputdate") + "</td>");
   out.println("<td width='38%'>��ȸ : "+rs.getInt("readcount")+"</td>");
   out.println("<td width='11%'></td>");
   out.println("</tr>");
   out.println("</table>");
   out.println("</td>");
   out.println("</tr>");
   out.println("<tr align='center'>");
   out.println("<td bgcolor='#1F4F8F' height='1'></td>");
   out.println("</tr>");
   out.println("<tr align='center'>");
   out.println("<td style='padding:10 0 0 0'>");
   out.println("<div align='left'><br>");
   out.println("<font size='3' color='#333333'><PRE>"+rs.getString("content") + "</PRE></div>");
   out.println("<br>");
   out.println("</td>");
   out.println("</tr>");
   out.println("<tr align='center'>");
   out.println("<td class='button' height='1'></td>");
   out.println("</tr>");
   out.println("<tr align='center'>");
   out.println("<td bgcolor='#1F4F8F' height='1'></td>");
   out.println("</tr>");
   out.println("</table>");
%>
<table width="600" border="0" cellpadding="0" cellspacing="5">
 <tr> 
  <td width="56"><A href="databoard_upd.jsp?id=<%=request.getParameter("id")%>&page=<%=request.getParameter("page")%>"><img src="image/edit.gif" width="66" height="21" border=0></A></td>
  <td width="56"><A href="databoard_del.jsp?id=<%=request.getParameter("id")%>&page=<%=request.getParameter("page")%>"><img src="image/del.gif" width="66" height="21" border=0></A></td>
  <td width="66"><A href="databoard_rwrite.jsp?id=<%=request.getParameter("id")%>&page=<%=request.getParameter("page")%>"><img src="image/reply.gif" width="66" height="21" border=0></A></td>
  <td width="406">&nbsp;</td>
  <td width="16"><A href="databoard_list.jsp?go=<%=request.getParameter("page")%>"><img src="image/list.gif" width="66" height="21" border=0></a></td>
 </tr>
</table>
<%       
  }
  rs.close();
  st.close();
  conn.close();
 } catch (java.sql.SQLException e) {
  out.println(e);
 } 
%>
</CENTER>
</BODY>
</HTML>