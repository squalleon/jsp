<%@ page contentType="text/html; charset=euc-kr" %> 
<%@ page language="java" import="java.sql.*" %> 
<%
String id = request.getParameter("id");
String password = request.getParameter("password").trim();
String sql="select * from woori where id=?" ;
Connection con=null;
PreparedStatement pst=null;    
ResultSet rs=null;

// jdbc-odbc driver ���
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
     } catch (ClassNotFoundException e){
     out.println(e.getMessage());
     }

// db���� ����
try {
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?useUnicode=true&true&characterEncoding=euckr","root","password");
    } catch (SQLException e) {
    out.println(e);
    }
try {
    pst = con.prepareStatement(sql);
    pst.setString(1,id);

    // sql ���Ǿ �����ϰ�, ResultSet �� ���Ѵ�
    rs = pst.executeQuery();  
         
    if (!(rs.next())) {%>
      �ش�Ǵ� ȸ���� �����ϴ�.
    <% } else 
         {
         if (password.equals(rs.getString("password"))) { %>
           ����� ID�� <%= id %> �� ȸ���� ������ ������ �����ϴ�. 
           ������ �����Ϸ��� ������ �Է��� ���� <�����ϱ�>��ư�� ��������.
           <FORM  name=form1 method=post action=update.jsp> 
           <INPUT type=hidden name=id value="<%=id%>">  
           <BR> �̸�   : 
           <INPUT type=text name=name value="<%=rs.getString("name")%>">
           <BR>E-mail   :  
           <INPUT type=text name=email value="<%=rs.getString("email")%>">
           <INPUT type=submit  name=change value="�����ϱ�" >
           <A href="delete.jsp?id=<%=id%>"> �����ϱ� </A>
           </FORM>
    
         <% } else {  %>
           ��й�ȣ�� Ʋ���ϴ�.
         <% } 
         }
     rs.close();
     con.close();
     pst.close();
     } catch (SQLException e) {
       out.println(e);
     }
%>
<A href="main.htm"> �������� </A>&nbsp;
<A href="select.htm"> ��ȸ�������� </A>