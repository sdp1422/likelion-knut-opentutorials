<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String name = "멋쟁이사자처럼 한국교통대학교"; %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>jsp 문서입니다.</title>
</head>

<body>
    <%= name %>
    전달받은 아이디 : <%= request.getParameter("id")%>
    <br>
    전달받은 패스워드 : <%= request.getParameter("password") %>
</body>

</html>