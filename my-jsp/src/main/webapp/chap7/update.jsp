<%@ page contentType="text/html; charset=euc-kr" %> 
<%@ page import="java.sql.*" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
                             
String sql=null;                              
Connection con=null;                              
Statement st=null;                                  
                             
// jdbc-odbc driver ���                              
try {                              
     Class.forName("com.mysql.cj.jdbc.Driver");
     } catch (ClassNotFoundException e){                          
     out.println(e.getMessage());                              
     }                              
                             
// db���� ����                              
try {                              
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?useUnicode=true&characterEncoding=euckr","root","password");
    } catch (SQLException e) {                              
    out.println(e);                              
    }                              
try {                              
    st = con.createStatement();                              
                             
   // sql ���Ǿ �����Ѵ�                              
    sql = "update woori set " ;                              
    sql = sql + "name ='" + name + "'," + "email ='" + email + "'" ;
    sql = sql + "  where id = '" + id + "'" ;                     
    st.executeUpdate(sql);                                
    con.close();                              
    st.close();                              
     } catch (SQLException e) {                              
       out.println(e);                              
     }                               
%>                              
<jsp:forward page="selectall.jsp" />