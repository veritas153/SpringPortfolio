<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<c:if test="${user == null}">
<div>
	<span>왜 있냐?</span>
</div>
</c:if>
<c:if test="${user != null}">
	<div class="student-basicContainer">
		<div class="student-currentClass">
			<div class="currentClass-title">현재 수강중 클래스</div>
			<div class="currentClass-container">
				<c:forEach var="currentClass" items="${classList}">
					<div class="classBox">
						<a href="<%=request.getContextPath()%>/studentInfo?code=${currentClass.class_code}" class="classLink">
							<div class="currentClass-name">
								<span>${currentClass.class_title}</span>
								<span class="currentClass-code">${currentClass.class_code}</span>
							</div>
							<div class="class-startDateContainer">
								<span>수강시작 날짜: </span>
							</div>
							<a class="listenClass-link" href="<%=request.getContextPath()%>/">
								<div class="">
									<span>수업 듣기</span>
									<span><i class="fas fa-angle-double-right"></i></span>
								</div>
							</a>
						</a>
					</div>
				</c:forEach>	
			</div>
		</div>
		<div class="currentVipPlan-container">
			<div class="vipStatus-container">
				<div>VIP플랜 현황</div>
				<c:if test="${vipList == null}">
					<div class="vipStatus">
						<span>VIP플랜에 가입되어 있지 않습니다.</span>
					</div>
				</c:if>
				<c:if test="${vipList != null}">
					<div class="vipStatus">
						<div class="vipDuedate">
							<span>${vipList.vip_dueDate}</span>
						</div>
					</div>
				</c:if>
			</div>
		
		</div>
	</div>
</c:if>