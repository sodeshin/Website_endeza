<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>難易度選択</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="box28">
    <span class="box-title">難易度選択</span><p><br/><br/>
<form action = "QuestionServlet" METHOD = "POST">
	<input type="hidden" name="Scr" value="0">
	<input type="hidden" name="Cnt" value="1">
	<input type="hidden" name="grade" value="1">
	<input id="square_btn4" type = "SUBMIT" value = "Lv.1:桜"></form>
<form action = "QuestionServlet" METHOD = "POST">
	<input type="hidden" name="Scr" value="0">
	<input type="hidden" name="Cnt" value="1">
	<input type="hidden" name="grade" value="2">
	<input id="square_btn4" type = "SUBMIT" value = "Lv.2:牡丹"></form>
<form action = "QuestionServlet" METHOD = "POST">
	<input type="hidden" name="Scr" value="0">
	<input type="hidden" name="Cnt" value="1">
	<input type="hidden" name="grade" value="3">
	<input id="square_btn4" type = "SUBMIT" value = "Lv.3:杜若"></form>
<form action = "QuestionServlet" METHOD = "POST">
	<input type="hidden" name="Scr" value="0">
	<input type="hidden" name="Cnt" value="1">
	<input type="hidden" name="grade" value="4">
	<input id="square_btn4" type = "SUBMIT" value = "Lv.4:秋桜"></form>
<form action = "QuestionServlet" METHOD = "POST">
	<input type="hidden" name="Scr" value="0">
	<input type="hidden" name="Cnt" value="1">
	<input type="hidden" name="grade" value="5">
	<input id="square_btn4" type = "SUBMIT" value = "Lv.5:覇王樹"></form><br>
<a href="mode.html" class="square_btn">モード選択へ戻る</a><br/><br/>
<a href="menu.jsp" class="square_btn">メニューへ戻る　</a>
</p></div>

</body>
</html>