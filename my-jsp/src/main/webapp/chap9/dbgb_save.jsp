<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page language="java" import="java.sql.*,java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
 String na = request.getParameter("name");
 String em = request.getParameter("email");
 String sub = request.getParameter("subject"); 
 String cont = request.getParameter("content");
 String ymd = (new java.util.Date()).toLocaleString();
 String sql=null;
 Connection con=null;
 Statement st=null; 
 int pos=0;
 while ((pos=cont.indexOf("\'", pos)) != -1) {
  String left=cont.substring(0, pos);
  String right=cont.substring(pos, cont.length());
  cont = left + "\'" + right;
  pos += 2;
 }  
 int cnt=0; 

 try {
  Class.forName("com.mysql.cj.jdbc.Driver");
 } catch (ClassNotFoundException e ) {
  out.println(e);
 }

 try {
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gboard?useUnicode=true&characterEncoding=euckr","root","password");

  st = con.createStatement();

  sql= "insert into guestboard(name,email,inputdate,subject,content)";
  sql= sql + " values('"+ na +"','"+ em +"','" + ymd + "','" ;
  sql= sql + sub + "','" + cont + "')";
     
  cnt = st.executeUpdate(sql); 
//  if (cnt >0) {
//   out.println("�����Ͱ� ���������� �ԷµǾ����ϴ�.");
//  } else { 
//   out.println("�����Ͱ� �Էµ��� �ʾҽ��ϴ�. ");
//  } 
  st.close();
  con.close();
 } catch (SQLException e) {
  out.println(e);
 }
%>
<!--<P>
<A href="dbgb_show.jsp">[���� ����]</A> &nbsp;
<A href="dbgb_write.htm">[�� �ø��� ������]</A>//-->
<jsp:forward page="dbgb_show.jsp"/>