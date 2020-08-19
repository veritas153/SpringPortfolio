<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="class-container">
	<div class="class-description-container">
		<div class="class-description">
			<img src="<%=request.getContextPath()%>/resources/image/vipPlan/vipPlanImage.jpg"  width="627" height="417">
			<div class="class-detail">
				<div class="stickyTab">
					<a class="btn-menu" href="#classInfo">클래스 소개</a>
					<a class="btn-menu" href="#curriculum">커리큘럼</a>
					<a class="btn-menu" href="#package">패키지</a>
					<a class="btn-menu" href="#instructor">강사</a>
					<a class="btn-menu" href="#questions">Q&A</a>
					<a class="btn-menu" href="#refund">환불 정책</a>
				</div>
				<div class="content-division">
					<div class="class-title" id="classInfo">
						<h3>클래스 소개</h3>
						<p>낯설기만한 코딩, 쉽고 빠르고 간단하게 시작해봐요!</p>
						<p>옛날과 달리 지금은 프로그래머들이 만들어 놓은 명령어를 조합하면 간단한 프로그램을 만들 수 있습니다.</p>
						<p>간단하겐 업무 보조용으로, 더 나아가 전문 프로그래머의 시작을 여는 걸 도와드리겠습니다.</p>
					</div>
					<div class="plan-offer" id="curriculum">
						<h3>커리큘럼</h3>
						
					</div>
					<div class="plan-offer" id="package">
						<h3>패키지</h3>
						
					</div>
					<div class="plan-offer" id="instructor">
						<h3>강사 소개</h3>
						
					</div>
					<div class="questions" id="questions">
						<h3>Q&A</h3>
						<p><b>Q1.</b> 수강 기간은 언제 까지 인가요?</p>
						<p><b>A1.</b> 수강 만료기간은 결제일로 부터 8주(56일)후 이며 시간은 기간 만료일 23:59 까지 입니다. 그러나 1달안에 이해하시고 체득하시는걸 권장드립니다.</p>
						<p><b>Q2.</b> 수강 신청했는데 환불이 가능한가요?</p>
						<p><b>A2.</b> 수강 신청일에서 7일 동안엔 환불 요청이 가능합니다. 자세한 사항은 아래 '환불 정책'을 참고해주세요.</p>
						<p><b>Q3.</b> 수강 중인데 플랜 해지까지 얼마 남지 않았습니다. 만약 만료일 까지 해당 강의를 다 듣지 못하면 강의는 더 들을 수 없나요?</p>
						<p><b>A3.</b> 수강 진행도가 80%를 넘긴 강의 한정으로 플랜이 끝나도 완강 예정 기간동안에는 이용이 가능합니다. 자세한 사항은 플랜 설명 참고 및 고객 센터에 문의해주세요.</p>
						<p><b>Q4.</b> 현재 소유하고 있는 포인트를 통해 클래스 연장은 가능한가요?</p>
						<p><b>A4.</b> 네. 50포인트에 1주일 수강 연장 가능합니다. 단, 포인트는 사용하면 환불이 불가능하니 신중하게 결정해주세요.</p>
						<p><b>Q5.</b> 코드 리뷰는 얼마인가요?</p>
						<p><b>A5.</b> 처음 1회는 무료, 그 이후엔 1회당 5,000원 또는 10포인트에 이용 할 수 있습니다. VIP플랜 신청자는 무료입니다.</p>
					</div>
					<div class="class-refund" id="refund">
						<h3>환불 정책</h3>
						<p>1. 본 상품은 결제일로 부터 1주일 내에 코드 리뷰를 사용한 내역이 없어야 위약금없이 전액 환불 신청이 가능합니다.</p>
						<p>2. 결제일로 부터 7일 이내에 코드 리뷰 (처음 무료 1회 제외)를 이용한 후 환불 요청을 할 경우 이에 대한 위약금만 부과됩니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="class-slidebar">
		<div class="slidebar-boundary">
			<div class="class-instructor">By. 김자바ㄴ</div>
			<div class="class-name">Python 입문</div>
			<div class="class-information">
				<div class="class-service">
					<div class="class-specification">
						
					</div>
					<div class="price-container">
						<div class="class-discount"></div>
						<div class="price-detail">
							<span class="class-price">
								총 48,500원
							</span>
							<span class="class-price-monthlyPay">
								할부 X
								<a href="#" class="monthlyPay-rules">
									<i class="far fa-question-circle"></i>
								</a>
							</span>
						</div>
					</div>
				</div>
				<div class="class-recommend-number">
					
				</div>
				<a href="#" class="class-subscription">
					<div class="class-subscription-button">수강 신청하기</div>
				</a>
			</div>
		</div>
	</div>
</div>