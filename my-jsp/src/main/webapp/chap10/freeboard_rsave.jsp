<%@ page contentType="text/html; charset=EUC-KR" %> 
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<%
 String na = request.getParameter("name");
 String em = request.getParameter("email");
 String sub=request.getParameter("subject"); 
 String cont = request.getParameter("content");
 String pw = request.getParameter("password");
 int mid = Integer.parseInt(request.getParameter("mid"));
 int rnum=Integer.parseInt(request.getParameter("rnum"));
 int step = Integer.parseInt(request.getParameter("step")) + 1;
 int id =0;
 int pos=0;
 if (cont.length()==1) 
  cont = cont+" "  ;
  while ((pos=cont.indexOf("\'", pos)) != -1) {
   String left=cont.substring(0, pos);
   String right=cont.substring(pos, cont.length());
   cont = left + "\'" + right;
   pos += 2;
  }

  java.util.Date yymmdd = new java.util.Date() ;
  SimpleDateFormat myformat = new SimpleDateFormat("yy-MM-d h:mm a");
  String ymd=myformat.format(yymmdd);

  String sql=null;
  Connection con=null;
  Statement st=null; 
  ResultSet rs=null;  
  int cnt=0; 
 
  try {
   Class.forName("org.gjt.mm.mysql.Driver");
  } catch (ClassNotFoundException e){
   out.println(e.getMessage());
  }
 
  try {
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fboard?useUnicode=true&characterEncoding=euckr","root","multi");
   st = con.createStatement();
   sql = "select max(id) from  freeboard";
   rs = st.executeQuery(sql);
   if (!(rs.next())) 
    id=1;
   else {
    id= rs.getInt(1) + 1 ;
    rs.close();
   }       
   if (step == 1) {
    sql = "select max(replynum) from freeboard where masterid="+mid;
    rs=st.executeQuery(sql);
    if (!(rs.next())) 
     rnum=1;
    else 
     rnum=rs.getInt(1)+1;
   } 
   sql= "insert into freeboard(id,name,password,email,subject," ;
   sql= sql + "content,inputdate,masterid,readcount,replynum,step)" ; 
   sql= sql + " values(" +id + ", '" +  na + "','" + pw + "','"+ em  ;
   sql= sql + "','" + sub + "','" + cont + "','" + ymd + "'," +mid+"," ;
   sql= sql + "0,"+rnum+ "," + step+")";
 
   cnt = st.executeUpdate(sql); 
   st.close();
   con.close();
  } catch (SQLException e) {
   out.println(e);
  }
  response.sendRedirect("freeboard_list.jsp?go="+request.getParameter("page"));
 %>