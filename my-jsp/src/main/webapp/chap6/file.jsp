<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.io.*" %>

<%
String indir = "C:/tomcat/webapps/ROOT"; 
String infile = "temp.txt";
int i=0; 
File dir=new File(indir); 
File afile=null; 
File check=new File(indir,infile);
if (check.exists())
 out.println(indir+"��ο� "+infile+"������ �����մϴ�."); 
else // infile ���� ���� ���ϸ��� �ش� ��ο� ������ ���� �ҽ� ���
 out.println(indir+"��ο� "+infile+"������ �����ϴ�."); 

out.println("<P>");

String [] dirlist = dir.list();
out.println("localhost ���丮�� �ִ� ����/������<BR>"); 
out.println("<SELECT size=10>");
for(i=0;i<dirlist.length;i++) { 
 afile=new File(indir,dirlist[i]);
 out.print("<OPTION>"+dirlist[i]); 
 if (afile.isFile())  out.print("("+afile.length()+" Byte)");
 out.print("</OPTION>");  
}
out.println("</SELECT>");
%>