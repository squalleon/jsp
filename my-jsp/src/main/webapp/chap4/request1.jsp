<%@ page contentType="text/html; charset=euc-kr" %>

<B>request ��ü ����</B><P>

<%="���ڵ� ��� : " + request.getCharacterEncoding() + "<P>" %>
<%="MIME Ÿ�� : " + request.getContentType() + "<P>" %> 
<%="��û���� ���� : " + request.getContentLength() + "<P>" %> 
<%="��� �̸� : " + request.getHeaderNames() + "<P>" %> 
<%="�� ���� ��� : " + request.getPathInfo() + "<P>" %> 
<%="Ŭ���̾�Ʈ �̸� : " + request.getRemoteHost() + "<P>" %> 
<%="Ŭ���̾�Ʈ IP �ּ� : " + request.getRemoteAddr() + "<P>" %> 
<%="Ŭ���̾�Ʈ URL ��� : " + request.getRequestURL() + "<P>" %> 
<%="���� ��� : " + request.getMethod() + "<P>" %>
<%="�������� �̸� : " + request.getProtocol() + "<P>" %>
<%="���� �̸� : " + request.getServerName() + "<P>" %>
<%="���� ��Ʈ ��ȣ : " + request.getServerPort() + "<P>" %>