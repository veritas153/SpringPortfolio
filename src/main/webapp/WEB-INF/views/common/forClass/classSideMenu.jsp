<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 
<div class="sideMenu-container">
	<div class="user-container">
		<div class="user-imageContainer">
			<div class="image-part">
				<span><i class="fas fa-user"></i></span>
			</div>
		</div>
		<div class="user-shortInfoContainer">
			<div class="userName-container">
				<span>${user.st_name}</span>
			</div>
			<div class="userEmail-container">
				<span>${user.st_email}</span>
			</div>
		</div>
	</div>
	<div class="sidemenu-area">
		<div class="lecture-title">${classList.class_title}</div>
		<div class="sidemenu-list">
			<c:forEach var="main" items="${mainChapter}">
				<div class="Chapter-container">
					<div class="mainChapter-titleContainer">${main.mainChapter_number}. ${main.mainChapter_title}</div>
					<c:forEach var="sub" items="${subChapter}">
						<c:if test="${sub.subChapter_mainChapter_priNum == main.mainChapter_priNum}">
							<a href="<%=request.getContextPath()%>/lecture?code=${classList.class_code}/${sub.subChapter_priNum}">
								<div class="subChapter-titleContainer">${main.mainChapter_number}-${sub.subChapter_number}. ${sub.subChapter_title}</div>
							</a>
						</c:if>
					</c:forEach>
				</div>
			</c:forEach>
		</div>
	</div>
</div>