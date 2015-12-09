<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container">
<div class="card"></div>
<div class="card">
<div class="pen-title">
<h1>제목 : ${board.title}</h1>
<h2>작성자 : ${board.writer}</h2>
</div>
<div><img src="../photofile/${(empty board.photo)?"base.png":board.photo}"></div>
<div class="title">내용 :<br> ${board.content} </div>
<h2 style="margin-left:20px;">첨부파일 받기 :</h2> <c:if test="${not empty board.attachFile}"><div class="rerun"><a href="../attachfile/${board.attachFile}">${board.attachFile}</a></div></c:if>
<c:if test="${empty board.attachFile}"><h2 style="margin-left:140px;">첨부파일이 없습니다.</h2></c:if>
<div class="footer"><a href="update.do?no=${board.no}" >게시물 수정</a><a href="delete.do?no=${board.no}&password=${board.password}" >게시물 삭제</a></div>

</div>
</div>
</body>
</html>