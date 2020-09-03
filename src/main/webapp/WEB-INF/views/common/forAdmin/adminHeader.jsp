<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header class="creatorPage-headerMenu">
	<div class="headerMenu-container">
		<div class="headerMenu-logo">
			<a class="logo-home" href="<%=request.getContextPath()%>/">
				<img class="logo" src="<%=request.getContextPath()%>/resources/image/logo.png" width="200" height="40" >
			</a>
			<a class="logo-home" href="<%=request.getContextPath()%>/creator">
				<img class="logo" src="<%=request.getContextPath()%>/resources/image/adminpageLogo.jpg" width="200" height="40" >
			</a>
		</div>
	</div>
	<div class="creator-personalMenu">
		<div class="creator-notification">
			<i class="far fa-bell"></i>
		</div>
		<div class="personalMenu-icon">
			<i class="fas fa-user"></i>
		</div>
	</div>
</header>