<%@ page contentType="text/html; charset=euc-kr" %>

<%
int  score = 96;
char grade;

switch (score/10) {
  case 10:  //case문에 break;를 쓰지 않는다면 아래의 case 구문까지 수행된다.
  case  9:
      grade = 'A';
      out.println("점수는 : " + score + " 이고 학점은 : " + grade);
      break;
  case  8:
      grade = 'B';
      out.println("점수는 : " + score + " 이고 학점은 : " + grade);
      break;
  case  7:
      grade = 'C';
      out.println("점수는 : " + score + " 이고 학점은 : " + grade);
      break;
  case  6:
      grade = 'D';
      out.println("점수는 : " + score + " 이고 학점은 : " + grade);
      break;
  default:
      grade = 'F';
      out.println("점수는 : " + score + " 이고 학점은 : " + grade);
}
%>