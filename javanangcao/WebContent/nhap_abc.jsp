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
double kq = 0, a=0, b=0;
String st1 = request.getParameter("a");
String st2 = request.getParameter("b");

if(st1 !=null && st2 !=null){
     a = Long.parseLong(st1);
	  b = Long.parseLong(st2);
	  kq =a+b;	
}
if(request.getParameter("submit") != null){
	 kq= a+b;
}
%>
 <input type="text" name ="a" placeholder="Nhap a"><br><br>
 <input type="text" name="b" placeholder="Nhap b"><br><br>
 
 <input type="text" value=<%=kq%>> 
 

</body>
</html>