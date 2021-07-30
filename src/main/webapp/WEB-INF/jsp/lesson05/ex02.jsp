<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리</title>
</head>
<body>
	<h2>조건문(choose,when,otherwiser)</h2>
	<!-- 70이하면 치킨 80이하면 샐러드 그게 아니면 굶어! -->
	<c:set var="weight" value="78"></c:set>
	
	<c:choose>
		<c:when test="${weight <=70 }">
			<h4>치킨먹자</h4>
		</c:when>
		<c:when test="${weight <=80 }">
			<h4>샐러드 먹자</h4>
		</c:when>
		<c:otherwise>
			<h4>굶자!</h4>
		</c:otherwise>
	
	</c:choose>
	
	<h2>반복문(forEach)</h2>
	<%-- 0~4 --%>
	<c:forEach var="i" begin="0" end="4" step="1">
		${i }
	</c:forEach>
	<br>
	
	<c:forEach var="i" begin="16" end="20" step="1" varStatus="status">
		${i } ${status.current } ${status.first } ${status.last } ${status.count } ${status.index }
	</c:forEach>
	
	<br>
	
	<%-- for(String fruits : fruits) --%>
	<c:forEach var="fruits" items="${fruits }" varStatus="status">
		<h4>${fruits } :::: ${status.count } ${status.index }</h4>
	</c:forEach>
</body>
</html>