<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
  
<div class="class-container">
	<div class="class-description-container">
		<div class="class-description">
			<img src="<%=request.getContextPath()%>/resources/uploadedImage${tempClass.addClass_image}"  width="627" height="417">
			<div class="class-detail">
				<div class="stickyTab">
					<a class="btn-menu" href="#classInfo">클래스 소개</a>
					<a class="btn-menu" href="#curriculum">커리큘럼</a>
					<a class="btn-menu" href="#package">패키지</a>
					<a class="btn-menu" href="#instructor">강사</a>
				</div>
				<div class="content-division">
					<div class="class-title" id="classInfo">
						<h3>클래스 소개</h3>
						<div>${tempClass.addClass_introduction}</div>
					</div>
					<div class="plan-offer" id="curriculum">
						<h3>커리큘럼</h3>
						<c:forEach var="tempMain" items="${tempMain}">
							<div class="curriculumList">
								<span>${tempMain.conMainChapter_number}</span>
								<span>${tempMain.conMainChapter_title}</span>
								<c:forEach var="tempSub" items="${tempSub}">
									<c:if test="${tempSub.conSubChapter_conMainChapter_priNum == tempMain.conMainChapter_priNum}">
										<p>${tempSub.conSubChapter_title}</p>
									</c:if>
								</c:forEach>
							</div> 
						</c:forEach>
					</div>
					<c:if test="${tempClass.addClass_hasPackage == 'N'.charAt(0)}">
						<div class="plan-offer" id="package">
							<h3>패키지</h3>
							<p>해당 강의는 패키지를 요구하지 않는 클래스입니다.</p>
							<p>필요한 부분은 클래스 내에서 설명할 예정이니 참고하시면 됩니다.</p>
						</div>
					</c:if>
					<c:if test="${tempClass.addClass_hasPackage == 'Y'.charAt(0)}">
						<div class="plan-offer" id="package">
							<h3>패키지</h3>
							<div>${tempClass.addClass_setPackage}</div>
						</div>
					</c:if>
					<div class="plan-offer" id="instructor">
						<h3>강사 소개</h3>
						<div>${tempClass.addClass_creator}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="class-slidebar">
		<div class="slidebar-boundary">
			<div class="class-instructor">${tempClass.addClass_creatorName}</div>
			<div class="class-name">${tempClass.addClass_title}</div>
			<div class="class-information">
				<div class="class-service">
					<div class="price-container">
						<div class="class-discount"></div>
						<div class="price-detail">
							<span> 
								<c:if test="${tempClass.addClass_monthly == 1}">일시불 </c:if>
								<c:if test="${tempClass.addClass_monthly == 3}">3개월 할부</c:if>
								<c:if test="${tempClass.addClass_monthly == 5}">5개월 할부</c:if>
								<c:if test="${tempClass.addClass_monthly == 6}">6개월 할부</c:if>
								<c:if test="${tempClass.addClass_monthly == 12}">12개월 할부</c:if>
							</span>
							<span class="class-price">/ 총 ${tempClass.addClass_price} 원</span>
							<span class="class-price-monthlyPay">
								<a href="#" class="monthlyPay-rules">
									<i class="far fa-question-circle"></i>
								</a>
							</span>
						</div>
					</div>
					<div class="class-specification">
						
						<div class="class-content"><i class="fas fa-book"></i> ${fn:length(tempSub)}개의 클래스</div>
					
						<c:if test="${tempClass.addClass_hasPackage == 'n'.charAt(0)}">
							<div class="class-package"><i class="fas fa-box-open"></i> 패키지 없음</div>
						</c:if>
						<c:if test="${tempClass.addClass_hasPackage == 'y'.charAt(0)}">
							<div class="class-package"><i class="fas fa-box-open"></i> 패키지 제공</div>
						</c:if>
						<c:if test="${tempClass.addClass_difficulty == '입문'}">
							<div class="class-difficulty"><i class="far fa-user"></i> 입문자 대상</div>
						</c:if>
						<c:if test="${tempClass.addClass_difficulty == '초급'}">
							<div class="class-difficulty"><i class="far fa-user"></i> 초급자 대상</div>
						</c:if>
						<c:if test="${tempClass.addClass_difficulty == '중급'}">
							<div class="class-difficulty"><i class="far fa-user"></i> 중급자 대상</div>
						</c:if>
						<c:if test="${tempClass.addClass_difficulty == '상급'}">
							<div class="class-difficulty"><i class="far fa-user"></i> 상급자 대상</div>
						</c:if>
					</div>
				</div>
				<form method="post" action="<%=request.getContextPath()%>/admin/tempClass?code=${tempClass.addClass_code}">
					<div class="addClass_confirmContainer">
						<select name="addClass_confirm2">
							<option value="N" selected>불허 및 수정 요구</option>
							<option value="Y">1차 심사통과</option>
						</select>
					</div>
					<div class="comment-container">
						<textarea class="addclass_adminComment" name="addClass_adminComment2" rows="3" cols="50" maxlength="150" placeholder="150자 내외로 크리에이터에게 답변해주세요."></textarea>
					</div>
					<div>
						<button>결과 송신</button>
					</div>
				</form>
			</div>
		</div>
		<div class="applyClass-classPreview">
		<div class="applyClass-previewStatus">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<figure class="class-image">	
						<img id="previewImage" src="<%=request.getContextPath()%>/resources/uploadedImage${tempClass.addClass_image}">
	  					<figcaption name="image-container" id="image-container">
	  						<h6 name="image-container-title" id="image-container-title">${tempClass.addClass_title}</h6>
	  						<div name="smallDescription" id="smallDescription">${tempClass.addClass_thumbIntro}</div>
	  					</figcaption>
					</figure>
					<div class="class-info">
						<span id="instructor">${tempClass.addClass_creatorName}</span>
						<span id="type">${tempClass.addClass_category}</span>
						<div class="class-title" id="class-title" name="class-title">${tempClass.addClass_title}</div>
					</div>
					<div class="d-flex">
						<div class="sub-group">
							<div class="like-number"><i class="far fa-heart" aria-hidden="true"></i> 0</div>
							<div class="recommend-number"><i class="far fa-thumbs-up" aria-hidden="true"></i> 0</div>
						</div>
						<small class="text-muted"></small>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</div>