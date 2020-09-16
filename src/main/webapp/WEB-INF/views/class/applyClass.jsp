<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
	<form method="post" action="<%=request.getContextPath()%>/applyClass">
		<div class="welcome-container">
			<section class="greetingMessage">
				탁월한 선택이십니다!<br>
				당신의 가능성을 더욱 높히세요.
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
			    	<select class="payment_cardBrand">
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
			    	<select class="card-option" name="payment_cardOption">
			    		<option value="" selected>종류 선택</option>
			    		<option id="personal-card" name="personal-card" value="personal-card">개인 카드</option>
			    		<option id="business-card" name="business-card" value="business-card">법인 카드</option>
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
				<div>
					<div class="box-title">유효기간</div>
					<div class="signup-box">
						<select id="payment_dueMonth" name="payment_dueMonth"></select>
				    	<select id="payment_dueYear"  name="payment_dueYear"></select>
				    </div>
			    </div>
			    <div>
					<div class="box-title">CVC</div>
					<div class="signup-box">
			    		<input type="text" id="payment_cardCVC" name="payment_cardCVC" class="user-name" maxlength="3" placeholder="카드 뒷면 7자리 숫자중 뒤에 3자리 입력">
			    	</div>
			    </div>
			</div>
			<div class="vipPlan-infos card-extraInfo">
				<div>
					<div class="box-title">비밀번호</div>
					<div class="signup-box">
						<input type="text" id="payment_cardPassword" name="payment_cardPassword" class="user-name">
				    </div>
				</div>
				<div class = "payment_birthday">
				   	<div class="box-title" id="birthday">생년월일</div>
					<div class="signup-box">
						<input type="text" id="payment_ownerBirthday" name="payment_ownerBirthday" class="user-name" placeholder="'/'없이 숫자로만 입력. 예) '19901201'">
				   	</div>
			   	</div>
			   	<div class = "payment_business display-toggle">
				    <div class="box-title" id="business">사업자 번호</div>
					<div class="signup-box">
						<input type="text" id="payment_businessNumber" name="payment_businessNumber" class="user-name">
			   		</div>
			   	</div>
			</div>
			
			<div class="applyClass-info">
				<div>결제 정보</div>
				<div class="applyClass-title">클래스 명: ${classList.class_title}</div>
				<div class="applyClass-detail">
					<div class="applyClass-monthly">
						<span>할부개월: </span>
						<div class="applyClass-monthlyContainer">
							<c:if test="${classList.class_monthlyPay == 1}"><span>일시불</span></c:if>
							<c:if test="${classList.class_monthlyPay == 3}"><span>3개월</span></c:if>
							<c:if test="${classList.class_monthlyPay == 5}"><span>5개월</span></c:if>
							<c:if test="${classList.class_monthlyPay == 6}"><span>6개월</span></c:if>
							<c:if test="${classList.class_monthlyPay == 12}"><span>12개월</span></c:if>
						</div>
					</div>
					<div class="applyClass-price">
						<span>가격: ${classList.class_price}</span>
					</div>
				</div>
			</div>
			
			<div class="box-title">
				<input type="checkbox">Aurts 결제 약관에 동의합니다.
			</div>
			<button>클래스 신청</button>
	</form>	
</div>
	
