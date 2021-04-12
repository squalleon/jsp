<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.io.*" %>
<jsp:useBean id="cnt" scope="application" class="key.counter" /> 

<%
 int count=0;
 session=request.getSession();
 session.setMaxInactiveInterval(1); 
 String first=(String)session.getValue("checkfirst");

 String count_file = "c:/jsp/chap5/count.txt";
 if(cnt.getcount() ==0) { 
  int j=0;
  String old=null;
  File infile = new File(count_file); 
  try{
   if (infile.exists()) {  
    BufferedReader input=new BufferedReader(new FileReader(infile));
    if ((old = input.readLine())!=null) {
     int i = Integer.parseInt(old);
     for(j=0;j<i;j++) {
      cnt.setcount();
     }
     input.close();  
    }
   }  
  }catch(IOException e){
   out.println(e.getMessage());
  }
 } 
 if (first != null) {
  count = cnt.getcount();
 } else {
  cnt.setcount();
  count = cnt.getcount();
  session.putValue("checkfirst", "first");
 }
 if (count % 10 == 0) {  
  try {   
   count_file = "c:/jsp/chap5/count.txt";
   PrintWriter pw = new PrintWriter(new FileWriter(count_file));
   pw.println(count);
   pw.close();
  } catch (IOException e) {
   out.println(e.getMessage());
  }
 }
out.println("현재까지 방문자 수 : "+ count);
%> 