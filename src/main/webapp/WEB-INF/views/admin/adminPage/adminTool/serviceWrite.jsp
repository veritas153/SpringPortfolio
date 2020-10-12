<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="adminAnnouncement-container">
	<form method="post" action="<%=request.getContextPath()%>/admin/announcement/write">
		<div>
			<input type="text" name="service_title">
			<select name="service_type">
				<option value="">문제 선택</option>
				<option value="allCreator">크리에이터 전체공지</option>
				<option value="vip">VIP 이슈</option>
				<option value="class">클래스 이슈</option>
				<option value="student">계정 문제 이슈</option>
				<option value="paycheck">결제 이슈</option>
				<option value="extra">기타 이슈</option>
			</select>
		</div>
		<div>
			<input type="checkbox" name="service_private" id="service_private">
			<input type="password" name="service_password" class="service_password display-toggle">
		</div>
		<div>
			<textarea id="summernote" name="service_content" ></textarea>
		</div>
		<button>확인</button>
	</form>
	<a href="<%=request.getContextPath()%>/admin/announcement/list">
		<button>작성 취소</button>
	</a>
</div>