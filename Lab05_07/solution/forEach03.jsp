<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach03</title>
</head>
<body>
<%--
  <%
   request.setAttribute("IDKey1", "小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
  %>   
  請於網頁內用表格的方式顯示上面這五個用逗點隔開的名詞。

 --%>
 <%
 request.setAttribute("IDKey1", "小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
 %>
在這裡寫出答案<BR>
<Table border='1' width="120">
<c:forEach var="item" items="${IDKey1}" >
   <TR><TD>
   ${ item }
   </TD></TR>   
</c:forEach>
</Table>
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>