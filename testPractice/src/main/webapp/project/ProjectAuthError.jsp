<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>로유!</title>
</head>
<body>
<h1>오류!!!!!!!!</h1>
<p>
<c:choose>
<c:when test="${errorCode=='401'}">
없는 프로젝트 또는 비번 틀려
</c:when>
<c:otherwise>
아 몰랑~
</c:otherwise>
</c:choose>
</p>
<jsp:include page="/Copyright.jsp"></jsp:include>
</body>

</html>
    
    