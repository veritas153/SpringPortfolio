<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
 
<form method="post" action="<%=request.getContextPath()%>/creator/addContent?code=${tempClass.addClass_code}">
	<div class="class-container">
		<div class="class-description-container">
			<div class="class-description">
				<img src="<%=request.getContextPath()%>/resources/uploadedImage${tempClass.addClass_image}"  width="627" height="417">
				<div class="classContent-setting">
					<div class="content-division">
						<div class="plan-offer" id="curriculum">
							<h3>클래스 컨텐츠 추가</h3>
							<div class="curriculumList">
							<c:forEach var="tempMain" items="${tempMain}">
								<a href="javascript:void(0)" class="mainChapter-button">
									<div class="mainChapter-dropdownMenu">
										<div class="mainChapter-titleContainer">
											<span>${tempMain.conMainChapter_number}.</span>
											<span>${tempMain.conMainChapter_title}</span>
											<div class="mainChapter-contentOpen">
												<i class="fas fa-angle-down"></i>
											</div>
										</div>
									</div>
								</a>
								<div class="subChapter-container">
									<c:forEach var="tempSub" items="${tempSub}">
										<c:if test="${tempSub.conSubChapter_conMainChapter_priNum == tempMain.conMainChapter_priNum}">
											
											<div class="subChapter-totalContainer">
												<a href="javascript:void(0)" class="subChapter-button">
													<div class="subChapter-titleContainer">
														<input type="text" class="conSubChapter_title" name="conSubChapter_title2" value="${tempSub.conSubChapter_title}" readonly>
														<div class="subChapter-contentOpen">
															<i class="fas fa-angle-down"></i>
														</div>
													</div>
												</a>
												<div class="subChapter-menuContainer">
													<input type="text" name="conSubChapter_priNum2" value="${tempSub.conSubChapter_priNum}" readonly>
													<textarea class="conSubChapter_content" name="conSubChapter_content2"></textarea>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</div>	
								
							</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button>컨텐츠 제출</button>
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
							<span class="class-price">
								${tempClass.addClass_price}원
							</span>
							<span class="class-price-monthlyPay"> / ${tempClass.addClass_monthly}개월
								<a href="#" class="monthlyPay-rules">
									<i class="far fa-question-circle"></i>
								</a>
							</span>
						</div>
					</div>
					<div class="class-specification">
						<div class="class-content"><i class="fas fa-book"></i> ${fn:length(tempSub)}개 강의 제공</div>
						<div class="class-package"><i class="fas fa-box-open"></i>
							<c:if test="${tempClass.addClass_hasPackage == 'N'.charAt(0)}">
								패키지 없음
							</c:if>
							<c:if test="${tempClass.addClass_hasPackage == 'Y'.charAt(0)}">
								패키지 제공
							</c:if>
						</div>
						<div class="class-difficulty"><i class="far fa-user"></i> 
							<c:if test="${tempClass.addClass_difficulty == '입문'}">
								입문자 대상
							</c:if>
							<c:if test="${tempClass.addClass_difficulty == '초급'}">
								초급자 대상
							</c:if>
							<c:if test="${tempClass.addClass_difficulty == '중급'}">
								중급자 대상
							</c:if>
							<c:if test="${tempClass.addClass_difficulty == '상급'}">
								상급자 대상
							</c:if>
						</div>
					</div>
				</div>
				<div class="comment-container">
					<div class="comment-title">관리자 피드백 사항</div>
					<input class="addclass_adminComment" name="addClass_adminComment2" rows="5" cols="100" maxlength="150" value="${tempClass.addClass_adminComment}" readonly>
				</div>
			</div>
		</div>
	</div>
	</div>
</form>
