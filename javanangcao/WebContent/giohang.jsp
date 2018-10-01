<%@page import="bo.giohangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<%@ include file="header.jsp" %>
	<link rel="stylesheet" href='bootstrap/css/bootstrap.min.css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>GIO HANG</title>
</head>
<body>
	<%
		String tensach = request.getParameter("ts");
		String gia = request.getParameter("gia");
		String dcanh=request.getParameter("anh");
		//String sl = request.getParameter("sl");;
		if(session.getAttribute("gh")==null){
			giohangbo g = new giohangbo();
			session.setAttribute("gh",g);
			g.Them(tensach, gia,"1", dcanh);
		}	
	%>
	
	<%if(session.getAttribute("gh")!=null){
		giohangbo g = new giohangbo();
		g = (giohangbo)session.getAttribute("gh");
		if(tensach!=null&&gia!=null&&dcanh!=null)
		{	g.Them(tensach, gia,"1", dcanh);
		  	session.setAttribute("gh", g);
		}
		int sh=g.ds.size();
	%>
	<%
		
		for(Integer i=0;i<sh;i++){
			String x =request.getParameter(i.toString());
			String th = g.ds.get(i).getTenhang();
			Integer giaa = g.ds.get(i).getGia(); 
			String dca = g.ds.get(i).getAnh();
			if(x!=null){	
				g=(giohangbo)session.getAttribute("gh");
				g.ds.get(i).setSoluong(Integer.parseInt(x));
				g.tt = 0;
				session.setAttribute("gh", g);
			}
		}
		
		
	%>
	<%
		String xoa = request.getParameter("xoa");
		int del = 0;
		if(xoa!=null)
		{	del = Integer.parseInt(xoa);
			g = new giohangbo();
			g = (giohangbo)session.getAttribute("gh");
			for(int i=0;i<sh;i++){
				if(i==del)
					g.ds.remove(i);
			}
			session.setAttribute("gh", g);
			response.sendRedirect("giohang.jsp");
		}
	%>
	<div class="container">
		<table class="table table-bordered">
		<tr>
		<% if(g.ds!=null){
			sh = g.ds.size();
			for(int i=0;i<sh;i++){ %>
		<table class="table">
			<tr>
				<td><img src="<%=g.ds.get(i).getAnh() %>" width='120'></td>
				<td>
							<p >Tên Sách: <%=g.ds.get(i).getTenhang() %> </p>
							<p>Giá: <%=g.ds.get(i).getGia() %></p>
							<p>Số lượng:
								<form action="giohang.jsp" method="get">
									<input type="text" name="<%=i %>" size="1" value="<%=g.ds.get(i).getSoluong() %>">
								</form>
							</p> 
							<button><a href="giohang.jsp?xoa=<%=i%>" >Xoa</a></button>
							
				</td>
				
			</tr>
		</table><br>
		<%}%>
		</tr>
		</table>
		<table border="0" width="330">
			<tr>
				<%g.tt = 0;//g = (giohangbo)session.getAttribute("gh");
				%>
				<td>Tổng tiền: <%=g.thanhtien() %></td>
				
				<td><a href="trangchu.jsp">Tiếp tục mua hàng</a></td>
			</tr>
		</table>
		<br><br><br>
		<%}} %>
		</div>
</body>
</html>