<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<form method="post" action="<%=request.getContextPath()%>/admin/tempClass?code=${tempClass.addClass_code}">
	<div class="class-container">
		<div class="class-description-container">
			<div class="class-description">
				<img src="<%=request.getContextPath()%>/resources/uploadedImage${tempClass.addClass_image}"  width="627" height="417">
				<div class="class-detail">
					<div class="content-division">
						<div class="plan-offer" id="curriculum">
							<h3>클래스 컨텐츠 추가</h3>
							<c:forEach var="tempMain" items="${tempMain}">
								<a href="javascript:void(0)" class="mainChapter-button">
									<div class="curriculumList">
										<div class="mainChapter-dropdownMenu">
											<div class="mainChapter-titleContainer">
												<span>${tempMain.conMainChapter_number}</span>
												<span>${tempMain.conMainChapter_title}</span>
											</div>
										</div>
										<c:forEach var="tempSub" items="${tempSub}">
											<c:if test="${tempSub.conSubChapter_conMainChapter_priNum == tempMain.conMainChapter_priNum}">
												<div>
													<div class="subChapter-menuContainer display-toggle">
														<input type="text" name="conSubChapter_title2" value="${tempSub.conSubChapter_title}">
														<textarea name="conSubchapter_content2"></textarea>
													</div>											
												</div>
											</c:if>
										</c:forEach>
									</div>
								</a> 
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="class-slidebar">
			<div class="slidebar-boundary">
				<div class="class-instructor">By. 생활코딩</div>
				<div class="class-name">${tempClass.addClass_title}</div>
				<div class="class-information">
					<div class="class-service">
						<div class="price-container">
							<div class="class-discount"></div>
							<div class="price-detail">
								<span class="class-price">
									총 ${tempClass.addClass_price} 원
								</span>
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
					<div class="comment-container">
						<input class="addclass_adminComment" name="addClass_adminComment2" rows="3" cols="50" maxlength="150" value="${tempClass.addClass_adminComment}" readonly>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>