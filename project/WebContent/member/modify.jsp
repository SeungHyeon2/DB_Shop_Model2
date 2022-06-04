<%@page import="servletTest.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
UserVO vo = (UserVO)request.getAttribute("vo");

String WEB_ID = (String)session.getAttribute("WEB_ID");
String NAME = vo.getNAME();
String PHONE = vo.getPHONE();
String SEX = vo.getSEX();
String EMAIL = vo.getEMAIL();
String BIRTH = vo.getBIRTH();


%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="../shop/index">상품 목록</a> <a href="../shop/basket">장바구니</a> <a href="../shop/buy_list">구매목록</a> <a href="modify">회원 수정</a> <a href="../index.jsp">로그아웃</a>
	<br/>
	<br/>
	회원수정
	<form action="modify_process" method="POST">
		<table border="1">
		

			<tr>
				<th>아이디</th>
				<td><input type="text" id="WEB_ID" name="WEB_ID" value="<%=WEB_ID %>" disabled="disabled"/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" id="WEB_PW" name="WEB_PW"/></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="NAME" name="NAME" value="<%=NAME%>"/></td>
			</tr>
			<tr>
				<th>핸드폰번호</th>
				<td><input type="text" id="PHONE" name="PHONE" value="<%=PHONE%>"/></td> 
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" value="M" name="SEX" 
				<%
				if(SEX.equals("M")){
				%>
				checked="checked"	
				<%
				}
				%>
				>남성<input type="radio" value="F" name="SEX"
				<%
				if(SEX.equals("F")){
				%>
				checked="checked"	
				<%
				}
				%>
				>여성</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" id="EMAIL" name="EMAIL" value="<%=EMAIL%>"/></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" id="BIRTH" name="BIRTH" min="1900-01-01" value="<%=BIRTH%>"/></td>
			</tr>
		</table>
		<br/>
		<input type="submit" value="회원수정"/>
	</form>
	
</body>
</html>