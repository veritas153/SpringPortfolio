<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<div class="status-container">
	<div class="statusManagement-container">
		<div class="classList-container">
			<c:if test="${tempClass ne null}">
				<div class="classList">
					<header class="classList-title">
						<span>클래스 신청 현황</span>
					</header>
					<form>
						<div class="classList-lineUp">
							<c:if test="${tempClass.size()!=0}">
								<c:forEach var="tempClass" items="${tempClass}">
									<a href="<%=request.getContextPath()%>/admin/tempClass?code=${tempClass.addClass_code}" class="classMenu-link">
										<div class="classMenu">
											<div class="class-upperRow">
												<div class="class-instructor" name="st_name">${tempClass.addClass_st_id}</div>
												<div class="tempClass-code">${tempClass.addClass_code}</div>
											</div>
											<div class="class-lowerRow">
												<div class="classTitle">
													<div class="class-name" name="class_name">${tempClass.addClass_title}</div>
												</div>
												<div class="tempClass-dueDate">
													<div class="dueDate"><fmt:formatDate value="${tempClass.addClass_submitDate}" pattern="yyyy년 MM월 dd일"/></div>
												</div>
											</div>
										</div>
									</a>
								</c:forEach>
							</c:if>
						</div>
					</form>
				</div>
			</c:if>
			<c:if test="${tempClass eq null}">
				<header class="classList-title">
					<span>클래스 신청 현황</span>
				</header>
				<div class="classList-lineUp">
					헐, 정말 없는거?		
				</div>
			</c:if>
		</div>
		<div class="individualGuide-container">
			<div class="individualGuideline">
				<header>
					<span>메뉴</span>
				</header>
				<div class="individualGuideline-menu-container">
					<div class="individualGuideline-menu">
						<a href="#">
							<div class="guideline-menu">
								<span>크리에이터는 처음이신가요?</span>
								<div class="sub-description">
									Aurts가 전 과정을 도와드립니다!<br>
									자세한 사항은 이 메뉴를 클릭하세요.
								</div>
							</div>
						</a>
						<a href="#">
							<div class="guideline-menu">
								<span>클래스 개설, 어떻게 하나요?</span>
								<div class="sub-description">
									클래스 구성, 소개문 등 필요한 자료 및 준비사항을 알아봅시다.
								</div>
							</div>
						</a>
						<a href="#">
							<div class="guideline-menu">
								<span>Aurts의 목표</span>
								<div class="sub-description">
									학생, 크리에이터 모두가 교육의 공정한 기회와 퀄리티를 누리게 하는것이 저희 목표입니다.
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
