
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Java76 SNS</title>
<link rel="stylesheet" href="../css/card.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
  <%-- <jsp:include page="/Header.jsp" /> --%>
  <div class="pen-title">
  <h1>SNS for Java76</h1>
</div>
  
<div class="rerun"><a href="add.do">New Note</a></div>

<div class='container'>
    <c:forEach var="board" items="${boards}">
  <div class='column'>
    <div class='post-module'>
      <div class='thumbnail'>
        <div class='date'>
          <div class='day'>${board.views}</div>
          <div class='month'>views</div>
        </div>
        <a href='detail.do?no=${board.no}'><img style="align:center;"src="../photofile/${(empty board.photo)?"base.png":board.photo}"></a>
      </div>
      <div class='post-content'>
        <div class='category'>Photo</div>
        <h1 class='title' ><a href='detail.do?no=${board.no}'>${board.title}</a></h1>
        <h2 class='sub_title'>${board.writer}</h2>
        <p class='description'>내용 : ${board.content}</p>
        <div class='post-meta'>
          <span class='timestamp'>
            <i class='fa fa-clock-o'></i>
            ${board.createdDate}
          </span>
          <span class='comments'>
            <i class='fa fa-comments'></i>
            <a href='#'>몇몇 comments</a>
          </span>
        </div>
      </div>
    </div>
  </div>

    </c:forEach>
</div>
   <jsp:include page="/Copyright.jsp"></jsp:include> 
</body>
</html>
