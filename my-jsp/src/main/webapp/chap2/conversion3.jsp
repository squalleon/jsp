<%@ page contentType="text/html; charset=euc-kr" %>

<%!
  public float show(float f){
    return f;
  }
 %>

<!-- 정수 5는 메소드의 매개 변수인 float 자료형으로 자동 형 변환 된다. -->
<%= "show() 메소드의 호출 결과는 : " + show(5) %>