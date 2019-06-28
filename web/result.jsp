<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="design.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
window.location.hash="no-back";
window.location.hash="no_back";
window.onhashchange=function(){
	window.location.hash="no-back";
}
</script>
<title>結果発表</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box28">
    <span class="box-title">結果発表</span><p><br/><br/>
<%
	ResultBean RB = new ResultBean();                             //ResultBeanのインスタンス
	//System.out.println("getGrade is " + request.getParameter("grade")); 
	RB.setGrade(request.getParameter("grade"));                   //難易度を取得し、ResultBeanに送る
	RB.setTrueCount(request.getParameter("Scr"));                  //現在の得点を取得し、ResultBeanに送る
%>
	<h2>今回の得点：<%= RB.getpoint() %></h2>
	<h2>正答率：<%= RB.getTrueCount() %>/5</h2>
	<form action = "ResultServlet" METHOD = "POST">
	<input type="hidden" name="Score" value="<%=RB.getpoint()%>">
	<input type = "SUBMIT" value = "難易度選択に戻る"></form>
</p></div>
</body>
</html>