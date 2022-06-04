<%@page import="servletTest.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
ProductVO vo = (ProductVO)request.getAttribute("vo");
String WEB_ID = (String)session.getAttribute("WEB_ID");
String NAME2 = "";
%>




<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="index">상품 목록</a> <a href="basket">장바구니</a> <a href="buy_list">구매목록</a> <a href="../member/modify">회원 수정</a> <a href="../index.jsp">로그아웃</a>
	<br/>
	<br/>
	----상품 정보---
	<form action="" method="POST" enctype="multipart/form-data">
		<table border="1">
		<%
			String IMAGE_URL = vo.getIMAGE_URL();
			NAME2 = vo.getNAME();
			String SEX = vo.getSEX();
			String CONTENTS = vo.getCONTENTS();
			int PRICE = vo.getPRICE();
			out.print("<tr>");
			String fullpath = "/upload/"+IMAGE_URL;
			out.print("<td>상품명 : " + NAME2 + "</td>");
			out.print("<td><img src='" + fullpath + "' style='width:200px;'></td>"); 
			out.print("</tr>");
			out.print("<tr>");
			out.print("<td colspan='2'> 가격 : " + PRICE + "</td>");
			out.print("</tr>");
			out.print("<tr>");
			out.print("<td colspan='2'> 설명 <br/>" + CONTENTS + "</td>");
		%>
		
		</table>
		<br/> 
		<input type="button" value="구매" onclick="location.href='buy_product?WEB_ID=<%=WEB_ID%>&NAME=<%=NAME2%>'"/>
		<input type="button" value="장바구니 추가" onclick="location.href='add_basket?WEB_ID=<%=WEB_ID%>&NAME=<%=NAME2%>'"/>
	</form>
	
</body>
</html>