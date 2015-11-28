<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>프로젝트리스트</title>
</head>
<body>
<h1>프로젝트!!</h1>
<a href='form.html' > 새글 </a><br>
<table border='1'>
<tr>
<th>번호</th>
<th>제목</th>
<th>시작일</th>
<th>종료일</th>
<th>멤버</th>
</tr>
<c:forEach var="projects" items="${project}">
<tr>
<td>${projects.no}</td>
<td><a href='update?no=${projects.no}'>${projects.title}</a></td>
<td>${projects.startDate}</td>
<td>${projects.endDate}</td>
<td>${projects.member}</td>
</tr>
</c:forEach>
</table>
<jsp:include page="/Copyright.jsp"></jsp:include>
</body>

</html>
    
    