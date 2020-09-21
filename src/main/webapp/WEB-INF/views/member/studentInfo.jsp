<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
 
<header class="vipPlan-header">
	<div class="vipPlan-headContent">
		<span class="vipPlan-gotoHome">
			<a href="<%=request.getContextPath()%>/">
				<img src="<%=request.getContextPath()%>/resources/image/logo.png">
			</a>
		</span>
		<div class="vipPlan-iconMenu">
			<span class="vipPlan-menu">
				<i class="fas fa-user"></i>
			</span>
		</div>
	</div>
	<!-- 일단 여기에 더 작업할 게 있긴 하다만... 일단 남겨둡시다. 시간 부족으로 포트폴리오 1차 정리 끝나면 구현할 예정-->
</header>
