<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<div class="classInfo-container">
	<div class="classStatus-title">
		<div class="description">클래스 명</div>
		<span>${classList.class_title}</span>
		<div class="classStatus-image">
			<img src="<%=request.getContextPath()%>/resources/uploadedImage/${classList.class_image}">
		</div>
	</div>
	<div class="classStatus-currentInfo">
		<div class="description">클래스 정보</div>
		<div class="classStatus-specifyInfo">
			<div class="classStatus-progressContainer">
				<div class="classStatus-classNumber">
					<span>전체 클래스 갯수: </span>
					<span>${mainChapter}</span>
				</div>
			</div>
			<div></div>
		</div>
	</div>
	<a href="#" class="getToClassLink">
		<div>클래스 수강하기</div>
	</a>
</div>