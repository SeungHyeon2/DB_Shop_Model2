<%@page import="servletTest.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
ArrayList<ProductVO> list = (ArrayList<ProductVO>)request.getAttribute("list");
%>

<script>

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 주문내역</title>
</head>
<body>

<a href="main">상품 목록</a> <a href="order">주문내역</a>
<br/>
<br/>
	주문내역

	<table border="1">
		<tr>
			<th>이미지</th>
			<th>상품명</th>
			<th>성별구분</th>
			<th>가격</th>
			<th>고객명</th>
			<th>고객번호</th>
			<th>등록일</th>
		</tr>
		<%
			
		for(int i =0; i<list.size(); i++){
			String IMAGE_URL = list.get(i).getIMAGE_URL();
			String P_NAME = list.get(i).getP_NAME();
			String NAME = list.get(i).getNAME();
			String SEX = list.get(i).getSEX();
			String REGDATE = list.get(i).getREGDATE();
			String PHONE = list.get(i).getPHONE();
			int PRICE = list.get(i).getPRICE();
			out.print("<tr>");
			String fullpath = /* request.getRealPath("upload") */"/upload/"+IMAGE_URL;
			out.print("<td><img src='" + fullpath + "' style='width:200px;'></td>"); 
			out.print("<td>" + P_NAME + "</td>");
			out.print("<td>" + SEX + "</td>");
			out.print("<td>" + PRICE + "</td>");
			out.print("<td>" + NAME + "</td>");
			out.print("<td>" + PHONE + "</td>");
			out.print("<td>" + REGDATE + "</td>");
			out.print("</tr>");
		}
					


		%>
		
	</table>
	<br />
	<input type="button" value="상품 등록" onclick="location.href='add_product.jsp'" /> 
</body>
</html>