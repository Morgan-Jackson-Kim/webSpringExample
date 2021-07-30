<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl 코어 라이브러리 추가 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL CORE 라이브러리</title>
</head>
<body>
	<h3>변수 정의하기 (set)</h3>
	<c:set var="number1" value="100" />
	<c:set var="number2"> 200 </c:set>
	
	<div>number1 : ${number1 }</div>
	<div>number2 : ${number2 }</div>
	<div>number 1 + number2 = ${number1 + number2 }</div>
	
	<h3> 변수 출력 (out)</h3>
	<h2>number 1 : <c:out value="${number1 }"/></h2>
	<h2>number : <c:out value="100"/></h2>
	
	<c:out value="<script>alert('출력')</script>"></c:out>
	<c:out value="<script>alert('출력')</script>" escapeXml="false"></c:out>
	
	<h2>조건문 (if)</h2>
	<c:if test="true">
		<h4>조건이 참이다.</h4>
	</c:if>
	
	<c:if test="${number1 > 50 }">
		<h4>number1은 50 보다 크다</h4>
	</c:if>
	
	<c:if test="${number1 == 100 }">
		<h4>number1은 100이다</h4>
	</c:if>
	
	<c:if test="${number2 eq 200 }">
		<h4>number2는 200 이다</h4>
	</c:if>
	
	<c:if test="${number2 ne 222 }">
		<h4>number2는 222가 아니다</h4>
	</c:if>
	
	<c:if test="${empty number1 }">
		<h4>number1은 비어있다.</h4>
	</c:if>
	
	<c:if test="${!empty number1 }">
		<h4>number1은 비어있지 않다.</h4>
	</c:if>
	
</body>
</html>