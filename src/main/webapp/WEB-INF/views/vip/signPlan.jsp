<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>




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
</header>
<div class="signUp-container">
	<form method="post" action="<%=request.getContextPath()%>/vipPlan/signVip">
		<div class="welcome-container">
			<section class="greetingMessage">
				이제 한 걸음만 더 내딛으시면 됩니다!<br>
				전문성을 갖춘 강의를 무제한으로 이용하세요!
			</section>
		</div>
			<div class="vipPlan-infos">
				<div class="box-title">성함</div>
				<div class="signup-box">
			    	<input type="text" id="name" name="st_name" class="user-name" value="${user.st_name}" readonly>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드사</div>
				<div class="signup-box">
			    	<input type="text" id="name" name="st_name" class="user-name" placeholder="성함">
			    </div>
			</div>
	</form>	
</div>
	
