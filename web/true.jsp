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
<title>正解！</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box28">
    <span class="box-title">正誤判定</span><p><br/><br/>
<h1>正解！！</h1><br>
<%
	request.setCharacterEncoding("UTF-8");                                  //UTF-8に変換
	QuestionBean QBg = new QuestionBean();                                  //QuestionBeanのインスタンス
	QBg.setGrade((String)request.getAttribute("Grade"));                    //難易度を取得し、QuestionBeanに送る
	QBg.setCount(QBg.NextCount((String)request.getAttribute("Count")));     //現在の問題数を取得し、＋１したうえでQuestionBeanに送る
	if(QBg.getCount().equals("0")){                                         //1問めであれば
       QBg.setScore("1");                                                   //現在の得点を１にしてQuestionBeanに送る
	}else{                                                                  //1問めでなければ
		QBg.setScore(String.valueOf(QBg.ScorePlus((String)request.getAttribute("Score"))));
	                                                                                  /*現在の得点を取得し、＋１したうえでQuestionBeanに送る*/
	}
%>
<%
	String URL =  QBg.CreateURL(QBg.getCount());//URLの生成(ここで問題の終了判定を行う)
	//System.out.println(URL);
%>
<form action = "<%= URL %>" METHOD = "POST">
	<input type="hidden" name="Scr" value="<%=QBg.getScore()%>">
	<input type="hidden" name="Cnt" value="<%=QBg.getCount()%>">
	<input type="hidden" name="grade" value="<%=QBg.getGrade()%>">
	<input type = "SUBMIT" value = "次へ進む"></form>
</p></div>
</body>
</html>