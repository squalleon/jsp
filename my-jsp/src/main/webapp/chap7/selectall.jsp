<%@ page contentType="text/html; charset=euc-kr" %> 
<%@ page language="java" import="java.sql.*" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<%
Connection con= null;
Statement st =null;
ResultSet rs =null;

// jdbc-odbc driver �� ����Ѵ�.
try {
    Class.forName("org.gjt.mm.mysql.Driver");
    } catch (ClassNotFoundException e ) {
      out.println(e);
    }
 
// DB�� �����Ѵ�.
try{
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?useUnicode=true&characterEncoding=euckr","root","multi");
  } catch (SQLException e) {
    out.println(e);
  }
 
// ������ �����Ѵ�.
try {
   st = con.createStatement();
   rs = st.executeQuery("select * from woori order by id");
%>

<HTML>
<BODY>
<CENTER> <H3>�츮 ȸ�� ���� ����</H3>
<TABLE border=1>
   <TR>
    <TH>����� ID</TH>
    <TH>�̸�</TH>
    <TH>E-mail</TH>
   </TR>
  <% if (!(rs.next()))  {%>

      <TR><TD colspan=4>��ϵ� ȸ���� �����ϴ�.</TD></TR>

  <%  } else {
       do {
          out.println("<TR>");
          out.println("<TD>" + rs.getString("id") + "</TD>");
          out.println("<TD>" + rs.getString("name") + "</TD>");
          out.println("<TD>" + rs.getString("email") + "</TD>");
          out.println("</TR>");
        }while(rs.next());
     }
     rs.close();
     st.close();
     con.close();
  } catch (SQLException e) {
    System.out.println(e);
  }

%>
</TABLE>
  [<A href="main.htm">main����</A>]&nbsp;[<A href="insert.htm">ȸ�� ��� ��������</A>]
</CENTER> 
</BODY>
</HTML>