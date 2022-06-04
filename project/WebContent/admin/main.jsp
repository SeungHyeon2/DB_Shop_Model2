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
function fn_del(name){
	location.href="del_product?NAME="+encodeURI(name);
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 상품목록</title>
</head>
<body>

<a href="main">상품 목록</a> <a href="order">주문내역</a>
<br/>
<br/>
	상품 목록

	<%-- <input type="button" value="나의 수강정보" onclick="location.href='myclass.jsp?flag=list&rs=true&WEB_ID=<%=WEB_ID%>'" />
	<input type="button" value="수강 정정" onclick="location.href='myclass.jsp?flag=modify&rs=true&WEB_ID=<%=WEB_ID%>'" /> --%>
	<table border="1">
		<tr>
			<th>이미지</th>
			<th>이름</th>
			<th>성별구분</th>
			<th>가격</th>
			<th>삭제</th>
		</tr>
		<%
			
			for(int i =0; i<list.size(); i++){
				String IMAGE_URL = list.get(i).getIMAGE_URL();
				String NAME = list.get(i).getNAME();;
				String SEX = list.get(i).getSEX();
				String CONTENTS = list.get(i).getCONTENTS();
				int PRICE = list.get(i).getPRICE();
				out.print("<tr>");
				String fullpath = /* request.getRealPath("upload") */"/upload/"+IMAGE_URL;
				out.print("<td><img src='" + fullpath + "' style='width:200px;'></td>"); 
				out.print("<td>" + NAME + "</td>");
				out.print("<td>" + SEX + "</td>");
				out.print("<td>" + PRICE + "</td>");
				out.print("<td>" + "<input type='button' value='삭제' onclick='javascript:fn_del(\"" + NAME+ "\")'/>" + "</td>");
				out.print("</tr>");
			}

		%>
		
	</table>
	<br />
	<input type="button" value="상품 등록" onclick="location.href='add_product.jsp'" /> 
</body>
</html>