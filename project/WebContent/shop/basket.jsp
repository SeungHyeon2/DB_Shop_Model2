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

String WEB_ID = (String)session.getAttribute("WEB_ID");
%>

<script>
function fn_del(){
	var IDX = document.getElementsByName('IDX');
	var STR_IDX = '';
	var cnt = 0;
	for(var i=0 ; i<IDX.length ; i++) { 
		if(IDX[i].checked) { 
			if(cnt == 0){
				STR_IDX = IDX[i].value;
			}else{
				STR_IDX = STR_IDX + ',' + IDX[i].value;
			}
			cnt++;
		}
	}
	location.href='del_basket?IDX='+STR_IDX+'&WEB_ID=<%=WEB_ID%>';

}
function fn_buy(){
	var IDX = document.getElementsByName('IDX');
	var STR_IDX = '';
	var cnt = 0;
	for(var i=0 ; i<IDX.length ; i++) { 
		if(IDX[i].checked) { 
			if(cnt == 0){
				STR_IDX = IDX[i].id;
			}else{
				STR_IDX = STR_IDX + ',' + IDX[i].id;
			}
			cnt++;
		}
	}
	location.href='buy_products?IDX='+STR_IDX+'&WEB_ID=<%=WEB_ID%>';
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
</head>
<body>
<a href="index">상품 목록</a> <a href="basket">장바구니</a> <a href="buy_list">구매목록</a> <a href="../member/modify">회원 수정</a> <a href="../index.jsp">로그아웃</a>
	<br/>
	<br/>
	장바구니 목록

	<%-- <input type="button" value="나의 수강정보" onclick="location.href='myclass.jsp?flag=list&rs=true&WEB_ID=<%=WEB_ID%>'" />
	<input type="button" value="수강 정정" onclick="location.href='myclass.jsp?flag=modify&rs=true&WEB_ID=<%=WEB_ID%>'" /> --%>
	<table border="1">
		<tr>
			<th>구분</th>
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
			int IDX = list.get(i).getIDX();
			out.print("<tr>");
			String fullpath = /* request.getRealPath("upload") */"/upload/"+IMAGE_URL;
			out.print("<td><input type='checkbox' name = 'IDX' value='"+IDX + "' id='"+NAME+"'></td>");
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
	<input type="button" value="구매" onclick="fn_buy();"/>
	<input type="button" value="삭제" onclick="fn_del();"/>
</body>
</html>