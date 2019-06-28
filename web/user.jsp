<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="design.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user.jsp</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box28">
    <span class="box-title">ユーザー情報</span>
<p>
<%
   ArrayList<Preview> list = (ArrayList<Preview>)request.getAttribute("Preview");
   for (int i=0; i<list.size(); i++) {
	   Preview sb = (Preview)list.get(i);
%>
<div class="box3"><p>
<h2>ユーザー名：<%=sb.getName() %></h2>
<h2>ユーザーID：<%=sb.getId() %></h2>
<h2>ランキング：<%=sb.getRanking()%>位</h2>
<h2>総得点：<%=sb.getScore()%>点</h2>
</p></div>
<%
   } // for ループの終わり(1行だけ)
%>
<a href="menu.jsp" class="square_btn">メニューへ戻る</a>
</p></div>
</body>
</html>