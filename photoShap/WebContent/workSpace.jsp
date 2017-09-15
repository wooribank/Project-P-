<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/workSpace.css">
</head>
<body>
	<div class="topnav" id="myTopnav">
		<span onclick="menuItemView('file')">
			<label>파일</label>
			<div id="file">
				<label id="newFile">새로운 파일 만들기</label>
			</div>	
		</span> 
		<label id="news">News</label> 
		<label id="contact">Contact</label>
		<label id="about">About</label> 
		<label id="menuicon" onclick="myFunction()">&#9776;</label>
	</div>
	
	<script src="./script/workSpace.js"></script>
</body>
</html>