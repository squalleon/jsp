<%@ page contentType="text/html; charset=euc-kr" %> 
<%@ page language="java" import="java.sql.*" %> 
<%
String id = request.getParameter("id");
String password = request.getParameter("password").trim();
String sql="select * from woori where id=?" ;
Connection con=null;
PreparedStatement pst=null;    
ResultSet rs=null;

// jdbc-odbc driver 등록
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
     } catch (ClassNotFoundException e){
     out.println(e.getMessage());
     }

// db와의 연결
try {
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/member?useUnicode=true&true&characterEncoding=euckr","root","password");
    } catch (SQLException e) {
    out.println(e);
    }
try {
    pst = con.prepareStatement(sql);
    pst.setString(1,id);

    // sql 질의어를 수행하고, ResultSet 을 구한다
    rs = pst.executeQuery();  
         
    if (!(rs.next())) {%>
      해당되는 회원이 없습니다.
    <% } else 
         {
         if (password.equals(rs.getString("password"))) { %>
           사용자 ID가 <%= id %> 인 회원의 정보는 다음과 같습니다. 
           정보를 변경하려면 내용을 입력한 다음 <수정하기>버튼을 누르세요.
           <FORM  name=form1 method=post action=update.jsp> 
           <INPUT type=hidden name=id value="<%=id%>">  
           <BR> 이름   : 
           <INPUT type=text name=name value="<%=rs.getString("name")%>">
           <BR>E-mail   :  
           <INPUT type=text name=email value="<%=rs.getString("email")%>">
           <INPUT type=submit  name=change value="수정하기" >
           <A href="delete.jsp?id=<%=id%>"> 삭제하기 </A>
           </FORM>
    
         <% } else {  %>
           비밀번호가 틀립니다.
         <% } 
         }
     rs.close();
     con.close();
     pst.close();
     } catch (SQLException e) {
       out.println(e);
     }
%>
<A href="main.htm"> 메인으로 </A>&nbsp;
<A href="select.htm"> 조회페이지로 </A>