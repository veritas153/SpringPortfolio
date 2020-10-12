<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<div class="status-container">
	<div class="statusManagement-container">
		<div class="classList-container">
			<c:if test="${tempClass eq null}">
				<header class="classList-title">
					<span>클래스 신청 현황</span>
				</header>
				<div class="classList-lineUp">
					신청요청이 온 클래스가 없습니다.		
				</div>
			</c:if>
			<c:if test="${tempClass ne null}"> <!-- 여긴 리스트가 null이 아닌 경우 (컨트롤러에서 arrayList로 받아왔으니까 리스트 -->
				<div class="classList">
					<header class="classList-title">
						<span>클래스 신청 현황</span>
					</header>
					<div class="classList-lineUp">
						<c:if test="${tempClass.size()!=0}">
							<c:forEach var="board" items="${tempClass}"> <!-- 여긴 리스트에 있는 값을 불러 주는곳. 그래서 var 정의할 때 이름 다르게 해야 좀 덜 헷갈린다고  -->
								<c:if test="${board.addClass_confirm == 'W'.charAt(0)}">
									<a href="<%=request.getContextPath()%>/admin/tempClass?code=${board.addClass_code}" class="classMenu-link">
										<div class="classMenu">
											<div class="class-upperRow">
												<div class="class-instructor" name="creatorName">${board.addClass_creatorName}</div>
												<div class="tempClass-code">신청 코드: ${board.addClass_code}</div>
											</div>
											<div class="class-lowerRow">
												<div class="classTitle">
													<div class="class-name" name="class_name">${board.addClass_title}</div>
												</div>
												<div class="tempClass-dueDate">
													<div class="dueDate">신청일: <fmt:formatDate value="${board.addClass_submitDate}" pattern="yyyy년 MM월 dd일"/></div>
												</div>
											</div>
										</div>
									</a>
								</c:if>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<div class="classList-finalConfirmContainer">
					<header class="classList-title">
						<span>1차 승인 클래스 확인</span>
					</header>
					<div class="finalConfirmList">
						<c:forEach var="confirmList" items="${tempClass}">
							<c:if test="${confirmList.addClass_finalSubmit == 'W'.charAt(0)}">
								<a href="<%=request.getContextPath()%>/admin/finalConfirm?code=${confirmList.addClass_code}" class="finalConfirm-link">
									<div class="classMenu">
										<div class="class-upperRow">
											<div class="class-instructor" name="creatorName">${confirmList.addClass_creatorName}</div>
											<div class="tempClass-code">신청 코드: ${confirmList.addClass_code}</div>
										</div>
										<div class="class-lowerRow">
											<div class="classTitle">
												<div class="class-name" name="class_name">${confirmList.addClass_title}</div>
											</div>
											<div class="tempClass-dueDate">
												<div class="dueDate">신청일: <fmt:formatDate value="${confirmList.addClass_submitDate}" pattern="yyyy년 MM월 dd일"/></div>
											</div>
										</div>
									</div>
								</a>
							</c:if>
						</c:forEach>
					</div>
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
