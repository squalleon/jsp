<%@ page contentType="text/html; charset=euc-kr" %>

<%
  //배열을 선언하면서 1부터 10까지의 값으로 초기화
  int number[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}; 

  //배열의 선언, 객체 생성 그리고 초기화 
  String[] season = new String[] {"봄","여름","가을","겨울"};
  
  //배열의 객체를 생성한 후 인덱스를 이용하여 각 배열 요소에 값을 대입
  String[] fruit = new String[3];
  fruit[0] = "바나나";
  fruit[1] = "사과";
  fruit[2] = "키위";

  out.print("좋아하는 숫자는 : " + number[8] + "<BR>");
  out.print("좋아하는 계절은 : " + season[0] + "<BR>");
  out.print("좋아하는 과일은 : " + fruit[2] + "<BR>");

  //배열의 길이는 length 속성을 이용하여 구할 수 있다.
  out.print("배열 number[]의 길이는 : " + number.length);
%>