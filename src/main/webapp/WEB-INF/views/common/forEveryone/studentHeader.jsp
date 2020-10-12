<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    
<header class="head-wrapper">
	<div class="logo-container">
		<a class="logo-home" href="<%=request.getContextPath()%>/">
			<img class="logo" src="<%=request.getContextPath()%>/resources/image/logo.png" width="200" height="40" >
		</a>
	</div>
	<c:if test="${user == null}">
		<div class="log-container">
			<a href="<%=request.getContextPath()%>/signup">회원가입</a>
			<a href="<%=request.getContextPath()%>/login">로그인</a>
		</div>
	</c:if>
	<c:if test="${user != null}">
		<div class="log-container">
			<c:if test="${user.st_value == 'ADMIN'}">
				<div class="">관리자 ON</div>
				<a href="<%=request.getContextPath()%>/admin">관리자 페이지</a>
			</c:if>
			<c:if test="${user.st_value == 'CREATOR'}">
				<a href="<%=request.getContextPath()%>/creator">크리에이터 센터</a>
			</c:if>
			<c:if test="${user.st_value == 'STUDENT'}">
				<a href="<%=request.getContextPath()%>/creator/joinCreator">크리에이터 신청</a>
			</c:if>
			<a href="<%=request.getContextPath()%>/studentInfo?st_id=${user.st_id}">회원정보</a>
			<a href="<%=request.getContextPath()%>/logout">로그아웃</a>
		</div>
	</c:if>
</header>
