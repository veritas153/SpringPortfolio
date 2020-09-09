<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="status-container">
	<div class="statusManagement-container">
		<div class="classList-container">
			<div class="classList">
				<header class="classList-title">
					<span>온라인 클래스</span>
					<a href="<%=request.getContextPath()%>/creator/applyClass">
						<span class="addClass">
							<i class="fas fa-plus"></i> 새로운 클래스
						</span>
					</a>
				</header>
				<div class="classList-lineUp">
					<a href="#" class="classMenu-link">
						<div class="classMenu">
							<span class="class-instructor" name="st_name">김무스</span>
							<div class="classTitle">
								<span class="class-name" name="class_name">무스무스무스</span>
								<span class="class-detail"><i class="fas fa-angle-double-right"></i>상세정보 확인</span>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="classList-applyStatus">
				<c:if test="${tempClass.addClass_st_id == user.st_id}">
					<header class="classList-title">
						<span>클래스 신청 현황</span>
					</header>
					<div>
						<c:if test="${tempClass.addClass_confirm == 'N'.charAt(0)}">
							<a href="<%=request.getContextPath()%>/creator/modify" class="classMenu-link">		
								<div class="classMenu">
									<span class="class-instructor" name="st_name">${tempClass.addClass_st_id}</span>
									<div class="classTitle">
										<span class="class-name" name="class_name">${tempClass.addClass_title}</span>
										<span class="class-detail"><i class="fas fa-angle-double-right"></i>기준 미달 및 수정 요청</span>
									</div>
								</div>
							</a>
						</c:if>
						<c:if test="${tempClass.addClass_confirm == 'Y'.charAt(0)}">
							<a href="<%=request.getContextPath()%>/creator/addContent?code=${tempClass.addClass_code}" class="classMenu-link">		
								<div class="classMenu">
								<span class="class-instructor" name="st_name">${tempClass.addClass_st_id}</span>
									<div class="classTitle">
										<span class="class-name" name="class_name">${tempClass.addClass_title}</span>
										<span class="class-detail"><i class="fas fa-angle-double-right"></i>1차 통과</span>
									</div>
								</div>
							</a>
						</c:if>
						<c:if test="${tempClass.addClass_confirm == 'W'.charAt(0)}">
							<div class="classMenu">
								<span class="class-instructor" name="st_name">${tempClass.addClass_st_id}</span>
								<div class="classTitle">
									<span class="class-name" name="class_name">${tempClass.addClass_title}</span>
									<span class="class-detail"><i class="fas fa-angle-double-right"></i>대기중</span>
								</div>
							</div>
						</c:if>	
					</div>
				</c:if>
				<c:if test="${tempClass.addClass_st_id != user.st_id}">
					<header class="classList-title">
						<span>클래스 신청 현황</span>
					</header>
					<div>그런거 없다.</div>
				</c:if>
			</div>
		</div>
		<div class="individualGuide-container">
			<div class="individualGuideline">
				<header>
					<span>클래스 도우미</span>
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
