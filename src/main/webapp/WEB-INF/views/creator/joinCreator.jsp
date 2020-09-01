<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="creatorConfirm-container">
	<div class="confirm-message">
		<span>실력과 지식이 있으면 누구든지 크리에이터가 되실 수 있습니다!</span>
		<p>등록 전 해당 정보가 맞는 지 확인 및 크리에이터명을 입력하세요.</p>
	</div>
	<form method="post" action="<%=request.getContextPath()%>/creator/joinCreator">
		<div class="user-name">
			<span>성함</span>
			<input type="text" value="${user.st_name}" readonly>
		</div>
		<div class="user-phoneNumber">
			<span>전화번호</span>
			<input type="text" value="${user.st_phoneNumber}" readonly>
		</div>
		<div class="user-creatorName">
			<span>크리에이터명을 입력하세요.</span>
			<input type="text" id="st_creator" name="st_creator">
		</div>
		<div>
			<button>확인</button>
		</div>
	</form>
</div>