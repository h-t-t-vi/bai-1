<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
gia tri cua session <%=session.getAttribute("ht") %><br><br>
gia tri cua tham so <%=request.getParameter("ts") %>
</body>
</html>