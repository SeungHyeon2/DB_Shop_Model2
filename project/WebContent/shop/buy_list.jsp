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
<title>Insert title here</title>
</head>
<body>
<a href="index">상품 목록</a> <a href="basket">장바구니</a> <a href="buy_list">구매목록</a> <a href="../member/modify">회원 수정</a> <a href="../index.jsp">로그아웃</a>
	<br/>
	<br/>
	구매 목록

	<%-- <input type="button" value="나의 수강정보" onclick="location.href='myclass.jsp?flag=list&rs=true&WEB_ID=<%=WEB_ID%>'" />
	<input type="button" value="수강 정정" onclick="location.href='myclass.jsp?flag=modify&rs=true&WEB_ID=<%=WEB_ID%>'" /> --%>
	<table border="1">
		<tr>
			<th>이미지</th>
			<th>이름</th>
			<th>성별구분</th>
			<th>가격</th>
			<th>등록일</th>
		</tr>
		<%
			for(int i =0; i<list.size(); i++){
				String IMAGE_URL = list.get(i).getIMAGE_URL();
				String NAME = list.get(i).getNAME();;
				String SEX = list.get(i).getSEX();
				String REGDATE  = list.get(i).getREGDATE();
				int PRICE = list.get(i).getPRICE();
				
				out.print("<tr>");
				String fullpath = /* request.getRealPath("upload") */"/upload/"+IMAGE_URL;
				out.print("<td><img src='" + fullpath + "' style='width:200px;'></td>"); 
				out.print("<td>" + NAME + "</td>");
				out.print("<td>" + SEX + "</td>");
				out.print("<td>" + PRICE + "</td>");
				out.print("<td>" + REGDATE + "</td>");
				out.print("</tr>");
			}
			

		%>
		
	</table>
	<br />
</body>
</html>