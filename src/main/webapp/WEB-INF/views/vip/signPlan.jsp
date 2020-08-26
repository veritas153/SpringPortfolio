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
			    	<input type="text" id="studentName" name="payment_st_id" class="user-name" value="${user.st_name}" readonly>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드사</div>
				<div class="signup-box">
			    	<select>
			    		<option>KB국민카드</option>
			    		<option>신한카드</option>
			    		<option>비씨카드</option>
			    		<option>하나카드</option>
			    		<option>하나카드(구 외환카드)</option>
			    		<option>NH농협카드</option>
			    		<option>삼성카드</option>
			    		<option>현대카드</option>
			    		<option>수협카드</option>
			    		<option>롯데카드</option>
			    		<option>씨티카드</option>
			    		<option>우리카드</option>
			    		<option>우체국카드</option>
			    		<option>전북은행</option>
			    		<option>광주은행</option>
			    		<option>새마을금고</option>
			    		<option>신협카드</option>
			    	</select>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드종류</div>
				<div class="signup-box">
			    	<select class="card-option" id="card-option">
			    		<option id="personal-card" name="personal-card">개인 카드</option>
			    		<option id="business-card" name="business-card">법인 카드</option>
			    	</select>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드번호</div>
				<div class="signup-box">
			    	<input type="text" id="name" name="payment_cardNumber" class="user-name">
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">CVC</div>
				<div class="signup-box">
			    	<input type="text" id="name" name="payment_cardCVC" class="user-name">
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">유효기간</div>
				<div class="signup-box">
					<select name="payment_dueMonth"></select>
			    	<select name="payment_dueYear"></select>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div>
					<div class="box-title">비밀번호</div>
					<div class="signup-box">
						<input type="text" id="name" name="payment_cardPassword" class="user-name">
				    </div>
				</div>
				<div>
				   	<div class="box-title" id="birthday">생년월일</div>
					<div class="signup-box">
						<input type="text" id="name" name="payment_ownerBirthday" class="user-name">
				   	</div>
			   	</div>
			   	<div>
				    <div class="box-title" id="business">사업자 번호</div>
					<div class="signup-box">
						<input type="text" id="name" name="payment_businessNumber" class="user-name">
			   		</div>
			   	</div>
			</div>
			<div class="box-title">
				<input type="checkbox">Aurts의 정기 구독 약관에 동의합니다.
			</div>
			<button>VIP플랜 신청</button>
	</form>	
</div>
	
