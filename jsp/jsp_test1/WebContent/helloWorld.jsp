<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String name = "�����̻���ó�� �ѱ�������б�"; %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>jsp �����Դϴ�.</title>
</head>

<body>
    <%= name %>
    <br>
   	 ���޹��� ���̵� : <%= request.getParameter("id")%>
    <br>
	���޹��� �н����� : <%= request.getParameter("password") %>
</body>

</html>