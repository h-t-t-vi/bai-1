

<%@page import="tam.CgioHang"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	
	CgioHang g = (CgioHang)session.getAttribute("gh");
	String th = request.getParameter("th");
	g.Xoa(th);
	session.setAttribute("gh", g);
	//session.removeAttribute("gh");
	response.sendRedirect("DatHang.jsp");
	
%>
	
</body>
</html>