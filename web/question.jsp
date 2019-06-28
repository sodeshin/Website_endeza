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
<title>問題</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box28">
    <span class="box-title">問題</span><p><br/><br/>
<h2>問
<% 
	QuestionBean QB = new QuestionBean();                                 //QuestionBeanのインスタンス
	String Num = (String)request.getAttribute("Count");                   //現在の問題数を受け取る
%>
	<%= Num %> ）以下の漢字の読みをひらがなで入力してください。</h2>
<%
   request.setCharacterEncoding("UTF-8");                                 //UTF-8に変換
   String Model = (String)request.getAttribute("model");                  //模範解答を取得
   /*System.out.println("Model : " + Model);
   System.out.println("ans = " + qb.getModelAns());*/
   QuestionBean QBg = new QuestionBean();                                 //QuestionBeanのインスタンス２
   QBg.setGrade((String)request.getAttribute("Grade"));                   //難易度を取得し、QuestionBeanに送る
   QBg.setCount(Num);                                                     //現在の問題数をQuestionBeanに送る
   QBg.setScore((String)request.getAttribute("Score"));                   //現在の得点を取得し、QuestionBeanに送る
   //System.out.println("q : Model = " + request.getAttribute("model"));
   request.setAttribute("model",request.getAttribute("model"));           //模範解答をAnswerServletへ送る
%>
	<h1>
	<span style="font-family:'MS P ゴシック'">
	<span style="font-size:72pt">
		<%= QuestionBean.getQStatement() %>
	</span>
	</span>
	</h1>

<form action = "AnserServlet" METHOD = "POST">
	<input type = "TEXT" name = "Answer">
	<input type="hidden" name="model" value="<%=Model%>">
	<input type="hidden" name="Scr" value="<%=QBg.getScore()%>">
	<input type="hidden" name="Cnt" value="<%=QBg.getCount()%>">
	<input type="hidden" name="Grd" value="<%=QBg.getGrade()%>">
	<input type = "SUBMIT" value = "解答する">
</form>
</p></div>
</body>
</html>