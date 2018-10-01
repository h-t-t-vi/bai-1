<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>NHA SACH MINH KHAI</title>
	<link rel="stylesheet" href='bootstrap/css/bootstrap.min.css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
	
		.list ul li a{
			text-decoration: none;
			color: black;
		}
		.list ul li:hover{
			background-color: #ccccff;
		}
		.menu-head ul li a{
			color:black;
		}
		.menu{
			background-color: #800000;
			border-color: #800000;
			border-radius: 0px;
			
		}
		.menu ul li a{
			color: white; 
			font-weight: bold;
			font-family: Tahoma, Geneva, sans-serif;
		}
		
		.nav li a:hover{
			color:red;
		}
	</style>
</head>
<body>
	<div class="container">
	<div class="row">
		<div class="col-md-3" style="padding-left: 0px;">
			<img alt="logo" src="image_sach/logo.PNG">
		</div>
		<div class="col-md-9 menu-head" style="padding: 10px 0px;">
			<ul class="nav navbar-nav">
				<li><a href="#"><img alt="24h" src="image_sach/icon1.png" width="18px" height="18px">&nbsp;Giao hàng 24h</a></li>
				<li><a href="#"><img alt="amazon" src="image_sach/icon2.png" width="18px" height="18px">&nbsp;Đặt hàng Amazon</a></li>
				<li><a href="#"><img alt="login" src="image_sach/icon3.png" width="18px" height="18px">&nbsp;Đăng nhập</a></li>
				<li><a href="#"><img alt="giohang" src="image_sach/icon4.png" width="18px" height="18px">&nbsp;Giỏ hàng</a></li>
			</ul>
		</div>
		
	</div>
	<div class="row">
		<nav class="navbar menu">
			<ul class="nav navbar-nav">
				<li><a href="#">Trang chủ</a></li>
				<li><a href="#">Giới thiệu</a></li>
				<li><a href="#">Giao hàng</a></li>
				<li><a href="#">Sách độc quyền</a></li>
				<li><a href="#">Hướng dẫn mua hàng</a></li>
				<li><a href="#">Download</a></li>
				<li><a href="#">Liên hệ</a></li>
				<li><a href="#">Giảm giá đặc biệt</a></li>
				<li><a href="#">Bản tin minh khai</a></li>
			</ul>
		</nav>
	</div>
 </div>
</body>
</html>
