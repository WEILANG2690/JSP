<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL c:out練習</title>
</head>
<body> 
<h1>JSTL c:out練習</h1>
在這裡印出三列 table標籤<br><br>
<%--
     <table border='1'>
      <tr><td>暑假</td><td>寒假</td></tr>
      </table>
--%>      
<c:out value="<table border='1'>" escapeXml="true" /><br>
<c:out value="<tr><td>暑假</td><td>寒假</td></tr>" escapeXml="true" /><br>
<c:out value="</table>" escapeXml="true" /><br>
<%
    int n = (int)(Math.random() * 20);
    if ( n % 2 ==0 ) {
         request.setAttribute("RandomNumber", "" + n);
    }
%>
<p/>
本次亂數為:<c:out value="${ RandomNumber }" default="無" /><br>
 
</body>
</html>