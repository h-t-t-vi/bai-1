<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href='bootstrap/css/bootstrap.min.css'>
<title>Tính toán</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
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
		.form-tinh{
			border: 1px solid black;
			width: 50%;
			margin: auto;
			text-align: center;
			padding: 20px auto;
		}
</style>	
</head>
<body>

<form action="tao" method="post" class="form-tinh">
	a = <input type="text" name="txta"><br><br>
	b = <input type="text" name="txtb"><br><br>
	<input type="submit" name="btn1" value="cong">
	<input type="submit" name="btn2" value="tru">
	<input type="submit" name="btn3" value="nhan">
	<input type="submit" name="btn4" value="chia">
	<br><br>
	<!-- kq  = <%=request.getParameter("t") %> -->
	
</form>
<%
// lay gia tri tu bien reqest
Long s = (Long)request.getAttribute("t");
String ht =  (String)request.getAttribute("ht");
ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");

%>
<div class="text-ds">
Tong =  <%=s %>
Ht =  <%=ht %>

</div>
<h2 style="text-align: center; ">Danh sách các sách </h2>
<%
	
//for(sachbean ss : ds){
//	out.println(ss.getMasach() + "<br>" + ss.getTensach());
//}
%>

<%
sachbo bo = new sachbo();
ArrayList<sachbean> ds1;
ds1 = bo.getsach();
int n = ds1.size();

%>
<div class="container">
<%
for(int i =0; i< n ; i++){%>
<div class='col-md-4 sach'  style="margin: 20px 0px;">
	
		<%sachbean sach = ds1.get(i); %>
			<img src="<%=sach.getAnh() %>" class="sach-img"><br>
			
			<p style="margin:10px 0px;"><%="Giá: "+sach.getGia() %>&nbsp;VND<br></p>
			<a href='giohang.jsp?ts=<%=sach.getTensach()%>&gia=<%=sach.getGia()%>&anh=<%=sach.getAnh()%>'>
				<img alt="" style="margin: 4% 16%" src="image_sach/giohang.PNG">
			</a>
		</div>
<% }
%>

</body>
</html>