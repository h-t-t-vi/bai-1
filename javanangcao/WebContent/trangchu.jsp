<%@ page import="java.util.ArrayList"%>
<%@ page import="bo.sachbo"%>
<%@ page import="bean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="utf-8">
	<link rel="stylesheet" href='bootstrap/css/bootstrap.min.css'>
	<title>NHA SACH MINH KHAI</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
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
		
		.btn{
			background-color: #ccccff;
			border-radius: 0px;
			color:black;
		}
		.sach a{
			text-decoration: none;
			color: black;
		}
		.sach h4{
			text-align: center;
		}
		.sach-img{
			width:200px;
			height: 288px;
		}
	</style>

</head>
<body>
<%
	sachbo s = new sachbo();
	ArrayList<sachbean> ds;
	ds = s.getsach();
	int n = ds.size();
%>

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
	<div class="row" >
		<div class="col-md-3" style="padding-left: 0;">
			<div class ="dropdown">
				<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Sách
			    <span class="caret"></span></button>
			    <ul class="dropdown-menu">
			      <li><a href="#">Sách </a></li>
			      <li><a href="#">Văn phòng phẩm</a></li>
			      <li><a href="#">Đồ chơi - Thú bông các loại</a></li>
			      <li><a href="#">Hàng xách tay Thái Lan </a></li>
			      <li><a href="#">Hàng lưu niệm </a></li>
			      <li><a href="#">Hàng điện tử </a></li>
			    </ul>
			</div>
			<div class="list" style="margin: 20px 0px;">
				
				 <ul class="list-group">
				    <li class="list-group-item"><a href="#">Đời sống - Gia đình</a></li>
				    <li class="list-group-item"><a href="#">Giáo khoa - Giáo trình - Sách tham khảo</a></li>
				    <li class="list-group-item"><a href="#">Ngoại ngữ - Từ điển</a></li>
				    <li class="list-group-item"><a href="#">Ngoại văn </a></li>
				    <li class="list-group-item"><a href="#">Sách chuyên ngành</a></li>
				    <li class="list-group-item"><a href="#">Sách song ngữ</a></li>
				    <li class="list-group-item"><a href="#">Ngoại ngữ - Từ điển</a></li>
				    <li class="list-group-item"><a href="#">Ngoại văn </a></li>
				    <li class="list-group-item"><a href="#">Sách chuyên ngành</a></li>
				    <li class="list-group-item"><a href="#">Sách song ngữ</a></li>
				  </ul>
			</div>
		</div>
		<div class="col-md-9">
		
		
		<%	for(int i=0;i<n;i++){%>
		<div class='col-md-4 sach'  style="margin: 20px 0px;">
			<%sachbean sach = ds.get(i);%>
			<img src="<%=sach.getAnh() %>" class="sach-img"><br>
			
			<p style="margin:10px 0px;"><%="Giá: "+sach.getGia() %>&nbsp;VND<br></p>
			<a href='giohang.jsp?ts=<%=sach.getTensach()%>&gia=<%=sach.getGia()%>&anh=<%=sach.getAnh()%>'>
				<img alt="" style="margin: 5% 23%" src="image_sach/giohang.PNG">
			</a>
			<br><br>
		</div>
	<%} %>
	</div>
</div>


</body>
</html>