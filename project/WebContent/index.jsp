<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	session.setAttribute("WEB_ID", null);
	session.setAttribute("NAME", null);
%>
<link rel="stylesheet" href="style.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h2>Welcome to Shopping Mall</h2>
	<h4>Please Login</h4>
<div class="layer">
	<div class="layer_inner">
	<div class="content">

	<form action="login" method="POST">
	<input type="hidden" name="rs" id="rs" value="false"/>
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" id="WEB_ID" name="WEB_ID"/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="WEB_PW" name="WEB_PW"/></td>
			</tr>
		</table>
		<br/>
		<input type="submit" value="로그인"/>
		<input type="button" value="회원가입" onclick="location.href='member/join.jsp'">
	</form>
	</div>
	</div>
</div>
</body>
</html>