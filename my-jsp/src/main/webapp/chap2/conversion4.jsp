<%@ page contentType="text/html; charset=euc-kr" %>

<%!
  public float divide() {
    int a=10, b=5, c;
    c=a/b;

    return c;
  }
 %>

<!-- divide() 메소드의 반환형인 float형으로 자동 형 변환 된다. -->

<%="divide() 메소드의 호출 결과는 : " + divide() %>