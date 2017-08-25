<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import='java.util.*, java.math.*'
	errorPage="ExceptionPage.jsp"%>
<%!
   final public int n = 100;   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的第一個JSP網頁</title>
<%!
   public static final double VAT = 0.05;
%>
</head>
<body>
	<%
Date d = new Date();
BigDecimal bd1 = BigDecimal.valueOf(258.2563);
BigDecimal bd2 = BigDecimal.valueOf(2530.79);
BigDecimal bd3 = bd1.add(bd2);
BigDecimal bd4 = bd1.divide(bd2);
System.out.println(bd3);
System.out.println(bd4);
%>

	<%
int num = (int)(Math.random() * 6) + 1 ;   // 產生5~10的亂數
for(int x = 1; x <= num; x++){
%>
	<%= x %>, Hello, 大家好
	<br>
	<%
}
%>
	<hr>
	<%
for(int x = 1; x <= num; x++){
   out.println(x + ", Hello, 大家好-2<br>");
}
%>
	<hr>
	您的明牌為-1：<%= getNumber() %><br>
	<hr>
	<%
  out.println("您的明牌為-2：" + getNumber() + "<br>");
%>
</body>
<%!
   public String getNumber(){
	   return "10 20 30 40 41 42"; 
   }
%>

</html>