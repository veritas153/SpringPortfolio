<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="chapterContent-container">
	<div class="class-titleContainer">${classList.class_title}</div>
	<c:forEach var="main" items="${mainChapter}">
		<c:forEach var="sub" items="${subChapter}">
			<c:if test="${sub.subChapter_mainChapter_priNum == main.mainChapter_priNum}">
				${sub.subChapter_priNum}
			</c:if>
		</c:forEach>	
	</c:forEach>
</div>