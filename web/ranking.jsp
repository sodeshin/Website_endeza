<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
	<%@ page import="design.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ranking.jsp</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box28">
    <span class="box-title">ランキング</span>
<p>
<%
ArrayList<Rank> listp = (ArrayList<Rank>)request.getAttribute("Rankp");
   for (int i=0; i<listp.size(); i++) {
	   Rank p = (Rank)listp.get(i);
%>
<div class="box20"><p>
<h1><%=p.getName() %>の順位：<%=p.getRanking() %>位 総得点:<%=p.getScore() %>点</h1>
</p></div>
<%
   } 
%>


<%
ArrayList<Rank> list = (ArrayList<Rank>)request.getAttribute("Rank");
   for (int i=0; i<list.size(); i++) {
	   Rank ab = (Rank)list.get(i);
%>
<div class="box3"><p>
	<h2><%=i+1 %> 位：<%=ab.getName() %> 総得点：<%=ab.getScore() %></h2>
</p></div>
<%
   } 
%>

<a href="menu.jsp" class="square_btn">メニューへ戻る</a> 
</p></div>
</body>
</html>