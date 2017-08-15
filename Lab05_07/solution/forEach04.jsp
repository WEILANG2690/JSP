﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05_07.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forEach04</title>
</head>
<body>
 <%
    Cat garfield       = new Cat(10, "嘉菲(Collection)");
    Cat kitty          = new Cat(3  , "凱蒂(Collection)");
    Cat pili           = new Cat(3  ,  "霹靂(Collection)");
    Collection<Cat> cc = new ArrayList<Cat>();
    cc.add(garfield);
    cc.add(kitty);
    cc.add(pili);
    request.setAttribute("CatCollection", cc);
 %>
在這裡寫出答案(如果本JSP網頁有錯誤，必須自行更改)<BR>
<TABLE width="240" border='1'>
<TR><TH colspan='3'>貓咪 Collection</TH></TR>
<c:forEach var="x" items="${CatCollection}">
    <TR> 
         <TD  width="160"> ${x.catName }</TD>
         <TD  width="80">  ${x.weight }</TD>
         
    </TR>
</c:forEach>
</TABLE>
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>