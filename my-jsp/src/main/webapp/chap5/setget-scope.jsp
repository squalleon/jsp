<%@ page contentType="text/html; charset=euc-kr"%> 
<jsp:useBean id="info" scope="request" class="key.user" /> 

���� �� : 
<jsp:getProperty name="info" property="name"/>
<jsp:getProperty name="info" property="num"/>

<BR>
Form���κ��� ������ ��: 
<jsp:setProperty name="info" property="name" />
<jsp:setProperty name="info" property="num" param="id" />
<jsp:getProperty name="info" property="name"/>
<jsp:getProperty name="info" property="num"/>

<BR>
���� ������ �� :
<jsp:setProperty name="info" property="name" value="��¥��Ʈ" />
<jsp:setProperty name="info" property="num" value="123456" />
<jsp:getProperty name="info" property="name"/>
<jsp:getProperty name="info" property="num"/>