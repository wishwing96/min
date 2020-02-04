<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/main_detail.css">
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script src="resources/js/main_detail.js"></script>
</head>
<body>
		<!-- Header -->
			<header id="header" class="alt">
				<div class="inner">
				<c:if test="${vo==null}">
					<table>
						<tr>
							<td><a href="login">login</a></td>
							<td><a href="join">join</a></td>
							<td><a>cart</a></td>
							<td><a href="board_list">board</a></td>
						</tr>
					</table>
				</c:if>
				<c:if test="${vo!=null}">
					<table>
						<tr>
							<td><a href="information">${vo.uname}님 환영합니다.</a></td>
							<td><a href="logout">logout</a></td>
							<td><a>cart</a></td>
							<td><a href="board_list">board</a></td>
						</tr>
					</table>
				</c:if>
					<h1><a href="main">이달의 꽃</a></h1>
					<p>A free responsive site template by</p>
				</div>
			</header>

	
	
<form action="" method="post">
	<img src="displayFile?fileName=/${us.mainfile}">
	<div id="a">
	<table>
	<tr><td>꽃 종류</td><td>${us.name}</td></tr>
	<tr><td>가격</td><td>${us.price }원</td></tr>
	<tr><td>포장색상</td>
	<td>
	<select id="opt">
		<option value="1">선택</option>
		<option value="분홍">분홍</option>
		<option value="보라">보라</option>
		<option value="노랑">노랑</option>
	</select>
	</td></tr>
	<tr><td>설명</td><td>${us.proexplain }</td></tr>
	</table>
	
	<tr><td colsapn="2"><a href="order?no=${us.no}">구매하기</a></td></tr>
</div>
</form>
</body>
</html>