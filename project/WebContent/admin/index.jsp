<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
</head>
<body>
	----관리자 페이지---
	<form action="adminLogin" method="POST">
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
	</form>
	
</body>
</html>