<%@ page contentType="text/html; charset=euc-kr" %> 
<%@ page language="java" import="java.sql.*" %> 
<%
String id = request.getParameter("id");
Connection con=null;
Statement st=null;    
String sql=null;

// jdbc-odbc driver ���
try {
   Class.forName("org.gjt.mm.mysql.Driver");
   } catch (ClassNotFoundException e){
     out.println(e.getMessage());
   }
// db���� ����
try {
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?useUnicode=true&characterEncoding=euckr","root","multi");
    
   // Statement ��ü ����
   st = con.createStatement();
   sql = "delete from woori  where id= '" + id + "'";
   st.executeUpdate(sql);

   con.close();
   st.close();  
   } catch (SQLException e) {
   }
 %>
<jsp:forward page="selectall.jsp" />