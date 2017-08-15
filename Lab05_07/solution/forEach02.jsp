<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05_07.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach02</title>
</head>
<body>
<%--
  Cat garfield  = new Cat(10, "嘉菲(Array)");
  Cat kitty     = new Cat(3,   "凱蒂(Array)");
  Cat pili      = new Cat(3,   "霹靂(Array)");
  Cat[] ca = {garfield, kitty, pili};
  request.setAttribute("CatArray", ca);
  請於網頁內用表格的方式顯示三隻貓的姓名與年齡。
 --%>
 <%
  Cat garfield  = new Cat(10, "嘉菲(Array)");
  Cat kitty     = new Cat(3,   "凱蒂(Array)");
  Cat pili      = new Cat(3,   "霹靂(Array)");
  Cat[] ca = {garfield, kitty, pili};
  request.setAttribute("CatArray", ca);
 %>
在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)<BR>
<TABLE width="240" border='1'>
  <TR><TH colspan='3'>貓咪陣列</TH></TR>
     <c:forEach var="x" items="${CatArray}">
        <TR> 
             <TD  width="180"> ${x.catName }</TD>
             <TD  width="60">  ${x.weight }</TD>
        </TR>
     </c:forEach>
</TABLE>
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>