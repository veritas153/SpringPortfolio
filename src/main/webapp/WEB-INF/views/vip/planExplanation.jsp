<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="class-container">
	<div class="class-description-container">
		<div class="class-description">
			<img src="<%=request.getContextPath()%>/resources/image/vipPlan/vipPlanImage.jpg"  width="627" height="417">
			<div class="class-detail">
				<div class="stickyTab">
					<a class="btn-menu" href="#plan">플랜 소개</a>
					<a class="btn-menu" href="#service">제공 서비스</a>
					<a class="btn-menu" href="#advantage">혜택</a>
					<a class="btn-menu" href="#questions">Q&A</a>
					<a class="btn-menu" href="#refund">환불 정책</a>
				</div>
				<div class="content-division">
					<div class="class-title" id="plan">
						<h3>플랜 소개</h3>
						<p>취미의 영역을 넘어서 전문가로 도약하십시오!</p>
						<p>지금까지는 남들보다 좀 나은 수준에 머무셨다면 이제 전문가의 세심하고 남다른 코칭이 필요할 때입니다. 당신의 남다른 열정을 불태울 수 있도록 저희 Aurts가 자신있게 선보입니다.
							시작은 미미하나 끝은 창대하게 맺을 수 있도록 확실하게 검증된 클래스들을 제공하겠습니다.
						</p>
					</div>
					<div class="plan-offer" id="service">
						<h3>제공 서비스</h3>
						<p>1년 동안  Aurt에서 제공하는 모든 클래스들의 콘텐츠를 제공 받으실 수 있습니다. (홈페이지내 콘텐츠 한정. 패키치는 별도 구매)
							다양한 클래스들을 들어보시고 관심사나 진로에 맞추어 회원님들의 재능의 폭을 넓히시거나 전문성을 강화하세요.</p>
						<p>모든 디바이스에서 무제한 재생이 가능하며 기간 동안 언제든지 복습을 통해 회원님의 지식을 보강하실 수 있습니다.</p>
					</div>
					<div class="advantages" id="advantage">
						<h3>혜택</h3>
						<p>	1. 1년동안 VIP클래스를 포함한 모든 클래스 무제한 수강 가능 (준비물 패키지를 제외한 강의에 제공되는 모든 콘텐츠 이용 가능) </p>
						<p> 2. 일부 패키지는 할인 또는 무료로 제공 가능
						<p>	3. 강의 내에 제공되는 서비스들 (코드 리뷰, 강사 피드백 등) 제한 없이 이용 가능</p>
						<p> 4. 강의를 들음으로 생기는 보너스 포인트 추가 지급</p>
						<p> 5. 향후 추가되는 컨텐츠 또한 플랜 기간 동안 이용 가능 할 예정</p>
					</div>
					<div class="questions" id="questions">
						<h3>Q&A</h3>
						<p><b>Q1.</b> 플랜 기간은 언제 까지 인가요?</p>
						<p><b>A1.</b> 기간은 결제일로 부터 1년(365일)이며 시간은 기간 만료일 23:59 까지 입니다.</p>
						<p><b>Q2.</b> 플랜 신청했는데 환불이 가능한가요?</p>
						<p><b>A2.</b> 플랜 해지는 기간 만료일 전까지 언제라도 신청 가능합니다. 자세한 사항은 아래 '환불 정책'을 참고해주세요.</p>
						<p><b>Q3.</b> 수강 중인데 플랜 해지까지 얼마 남지 않았습니다. 만약 만료일 까지 해당 강의를 다 듣지 못하면 강의는 더 들을 수 없나요?</p>
						<p><b>A3.</b> 수강 진행도가 80%를 넘긴 강의 한정으로 플랜이 끝나도 완강 예정 기간동안에는 이용이 가능합니다. 만약 그렇지 않은 경우는 이벤트, 강의 수강, 패키지 구입 등을 통해 얻은 포인트를 사용함으로 기간을 연장할 수 있습니다.</p>
						<p><b>Q4.</b> 현재 소유하고 있는 포인트를 통해 플랜 연장은 가능한가요?</p>
						<p><b>A4.</b> 불가능합니다. 개별 강의만 연장 가능합니다.</p>
					</div>
					<div class="class-refund" id="refund">
						<h3>환불 정책</h3>
						<p>1. 본 상품은 결제일로 부터 1주일 안에 환불 요청하시면 전액 환불이 가능하며 회원님이 원하시는 때 언제든지 환불 요청이 가능합니다.</p>
						<p>2. 다만 해당 1주일동안 무료 클래스를 제외한 11개 이상의 클래스를 수강중이시거나 1주일이 지난 이후 환불 요청을 하셨으면 남은 기간과 클래스 진행도를 기준으로 해당금액 산정 후 차감되어 환불됩니다.</p>
						<p>3. 결제일로 부터 1년이 지난 이후 (보너스 기간 미포함)엔 환불 요청이 불가능합니다.</p>
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="class-slidebar">
		<div class="slidebar-boundary">
			<div class="class-instructor">By. Aurts</div>
			<div class="class-name">VIP Unlimited 플랜</div>
			<div class="class-information">
				<div class="class-service">
					<div class="class-specification">
						<div class="class-specification-division">
							<i class="fas fa-video"></i>
							200+ 클래스 무제한 제공
						</div>
						<div class="class-specification-division">
							<i class="far fa-calendar-alt"></i>
							1년동안 무제한 수강 가능!
						</div>
						<div class="class-specification-division">
							<i class="fas fa-tablet-alt"></i>
							다양한 기기 호환성 제공
						</div>
					</div>
					<div class="price-container">
						<div class="class-discount"></div>
						<div class="price-detail">
							<span class="class-price">
								월 59,900원
							</span>
							<span class="class-price-monthlyPay">
								12개월 할부시
								<a href="#" class="monthlyPay-rules">
									<i class="far fa-question-circle"></i>
								</a>
							</span>
						</div>
					</div>
				</div>
				<div class="class-recommend-number">
					
				</div>
				<a href="<%=request.getContextPath()%>/subscription" class="class-subscription">
					<div class="class-subscription-button">가입하기</div>
				</a>
			</div>
		</div>
	</div>
</div>