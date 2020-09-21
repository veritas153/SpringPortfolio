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
	<form method="post" action="<%=request.getContextPath()%>/vipClass/subscription">
		<div class="welcome-container">
			<div class="welcome-container">
				<section class="greetingMessage">
					이제 한 걸음만 더 내딛으시면 됩니다!<br>
					전문성을 갖춘 강의를 무제한으로 이용하세요!
				</section>
			</div>
		</div>
		<c:if test="${paymentInfo == null}">
			<div class="applyClass-info">
				<div>결제 정보</div>
				<div class="applyClass-title">상품명: VIP플랜 1년 패키지</div>
				<div class="applyClass-detail">
					<div class="applyClass-monthly">
						<span>할부개월: </span>
						<span>12개월</span>
						<input type="text" name="class_monthlyPay" value="12" readonly style="visibility: hidden;">
					</div>
					<div class="applyClass-price">
						<span>가격: 125,000원</span>
						<input type="text" name="purchase_price" value="125000" readonly style="visibility: hidden;">
					</div>
				</div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">성함</div>
				<div class="signup-box">
			    	<input type="text" id="studentName" name="payment_owner" class="user-name" value="${user.st_name}" readonly>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드사</div>
				<div class="signup-box">
			    	<select class="payment_cardBrand" name="payment_cardBrand">
			    		<option value="KB국민카드">KB국민카드</option>
			    		<option value="신한카드">신한카드</option>
			    		<option value="비씨카드">비씨카드</option>
			    		<option value="하나카드">하나카드</option>
			    		<option value="하나카드(구 외환카드)">하나카드(구 외환카드)</option>
			    		<option value="NH농협카드">NH농협카드</option>
			    		<option value="삼성카드">삼성카드</option>
			    		<option value="현대카드">현대카드</option>
			    		<option value="수협카드">수협카드</option>
			    		<option value="롯데카드">롯데카드</option>
			    		<option value="씨티카드">씨티카드</option>
			    		<option value="우리카드">우리카드</option>
			    		<option value="우체국카드">우체국카드</option>
				    	<option value="전북은행">전북은행</option>
				   		<option value="광주은행">광주은행</option>
				   		<option value="새마을금고">새마을금고</option>
				   		<option value="신협카드">신협카드</option>
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
		  	</div>
			<div class="box-title">CVC</div>
			<div class="signup-box">
		  		<input type="text" id="payment_cardCVC" name="payment_cardCVC" class="user-name" maxlength="3" placeholder="카드 뒷면 7자리 숫자중 뒤에 3자리 입력">
		   	</div>	
			<div class="vipPlan-infos card-extraInfo">
				<div>
					<div class="box-title">비밀번호</div>
					<div class="signup-box">
						<input type="text" id="payment_cardPassword" name="payment_cardPassword" maxlength="16" class="user-name">
					</div>
				</div>
				<div class = "payment_birthday">
					<div class="box-title" id="birthday">생년월일</div>
					<div class="signup-box">
						<input type="text" id="payment_ownerBirthday" name="payment_ownerBirthday" class="user-name" maxlength="8" placeholder="'/'없이 숫자로만 입력. 예) '19901201'">
					</div>
				</div>
				<div class = "payment_business display-toggle">
					<div class="box-title" id="business">사업자 번호</div>
					<div class="signup-box">
						<input type="text" id="payment_businessNumber" name="payment_businessNumber" class="user-name" maxlength="10">
				   	</div>
				</div>
			</div>	
		</c:if>
		<c:if test="${paymentInfo != null}">
			<div class="applyClass-info">
				<div>결제 정보</div>
				<div class="applyClass-title">상품명: VIP플랜 1년 패키지</div>
				<div class="applyClass-detail">
					<div class="applyClass-monthly">
						<span>할부개월: </span>
							<span>12개월</span>
							<input type="text" name="class_monthlyPay" value="12" readonly style="visibility: hidden;">
						</div>
					</div>
					<div class="applyClass-price">
						<span>가격: 125,000원</span>
						<input type="text" name="purchase_price" value="125000" readonly style="visibility: hidden;">
					</div>
				</div>
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
			    	<select class="payment_cardBrand" name="payment_cardBrand">
			    		<option value="KB국민카드" <c:if test="${paymentInfo.payment_cardBrand == 'KB국민카드'}">selected</c:if>>KB국민카드</option>
			    		<option value="신한카드" <c:if test="${paymentInfo.payment_cardBrand == '신한카드'}">selected</c:if>>신한카드</option>
			    		<option value="비씨카드" <c:if test="${paymentInfo.payment_cardBrand == '비씨카드'}">selected</c:if>>비씨카드</option>
			    		<option value="하나카드" <c:if test="${paymentInfo.payment_cardBrand == '하나카드'}">selected</c:if>>하나카드</option>
			    		<option value="하나카드(구 외환카드)" <c:if test="${paymentInfo.payment_cardBrand == '하나카드(구 외환카드)'}">selected</c:if>>하나카드(구 외환카드)</option>
			    		<option value="NH농협카드" <c:if test="${paymentInfo.payment_cardBrand == 'NH농협카드'}">selected</c:if>>NH농협카드</option>
			    		<option value="삼성카드" <c:if test="${paymentInfo.payment_cardBrand == '삼성카드'}">selected</c:if>>삼성카드</option>
			    		<option value="현대카드" <c:if test="${paymentInfo.payment_cardBrand == '현대카드'}">selected</c:if>>현대카드</option>
			    		<option value="수협카드" <c:if test="${paymentInfo.payment_cardBrand == '수협카드'}">selected</c:if>>수협카드</option>
			    		<option value="롯데카드" <c:if test="${paymentInfo.payment_cardBrand == '롯데카드'}">selected</c:if>>롯데카드</option>
			    		<option value="씨티카드" <c:if test="${paymentInfo.payment_cardBrand == '씨티카드'}">selected</c:if>>씨티카드</option>
			    		<option value="우리카드" <c:if test="${paymentInfo.payment_cardBrand == '우리카드'}">selected</c:if>>우리카드</option>
			    		<option value="우체국카드" <c:if test="${paymentInfo.payment_cardBrand == '우체국카드'}">selected</c:if>>우체국카드</option>
				    	<option value="전북은행" <c:if test="${paymentInfo.payment_cardBrand == '전북카드'}">selected</c:if>>전북은행</option>
				   		<option value="광주은행" <c:if test="${paymentInfo.payment_cardBrand == '광주카드'}">selected</c:if>>광주은행</option>
				   		<option value="새마을금고" <c:if test="${paymentInfo.payment_cardBrand == '새마을금고'}">selected</c:if>>새마을금고</option>
				   		<option value="신협카드" <c:if test="${paymentInfo.payment_cardBrand == '신협카드'}">selected</c:if>>신협카드</option>
				   	</select>
				</div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드종류</div>
				<div class="signup-box">
			    	<select class="card-option" name="payment_cardOption">
			    		<option value="" selected>종류 선택</option>
			    		<option id="personal-card" name="personal-card" value="personal-card" <c:if test="${paymentInfo.payment_cardOption == 'personal-card'}">selected</c:if>>개인 카드</option>
			    		<option id="business-card" name="business-card" value="business-card"  <c:if test="${paymentInfo.payment_cardOption == 'business-card'}">selected</c:if>>법인 카드</option>
			    	</select>
			    </div>
			</div>
			<div class="vipPlan-infos">
				<div class="box-title">카드번호</div>
				<div class="signup-box">
			    	<input type="text" id="name" name="payment_cardNumber" class="user-name" value="${paymentInfo.payment_cardNumber}">
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
		  	</div>
			<div class="box-title">CVC</div>
			<div class="signup-box">
		  		<input type="text" id="payment_cardCVC" name="payment_cardCVC" class="user-name" maxlength="3">
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
						<input type="text" id="payment_ownerBirthday" name="payment_ownerBirthday" class="user-name" value="${paymentInfo.payment_ownerBirthday}">
					</div>
				</div>
				<div class = "payment_business display-toggle">
					<div class="box-title" id="business">사업자 번호</div>
					<div class="signup-box">
						<input type="text" id="payment_businessNumber" name="payment_businessNumber" class="user-name" value="${paymentInfo.payment_businessNumber}">
				   	</div>
				</div>
			</div>	
			
		</c:if>		
		<div class="box-title">
			<input type="checkbox" id="agreement-term">Aurts 결제 약관에 동의합니다.
		</div>
		<button class="submitButton" disabled>VIP플랜 신청</button>
	</form>	
</div>




	
