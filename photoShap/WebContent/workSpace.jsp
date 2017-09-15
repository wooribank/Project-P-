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
			<div class="topChi" id="file">
				<label id="newFile">새로운 파일 만들기</label>
			</div>
		</span> 
		<span onclick="menuItemView('1')"> 
			<label id="news">News</label>
			<div class="topChi" id="1">
				
			</div>
		</span>
		<span onclick="menuItemView('2')">
			<label id="contact">Contact</label>
			<div  class="topChi" id="2">
				 
			</div>
		</span>
		<span onclick="menuItemView('3')">
			<label id="about">About</label>
			<div class="topChi" id="3">
				
			</div>
		</span>
		
		
		<label id="menuicon" onclick="topnavView()">&#9776;</label>
	</div>

	<script src="./script/workSpace.js"></script>
</body>
</html>