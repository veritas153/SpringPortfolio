<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<div class="classInfo-container">
	<div class="classInfo-box">
		<div class="classStatus-firstLine">
			<div class="classStatus-title">
				<div class="classStatus-image">
					<img src="<%=request.getContextPath()%>/resources/uploadedImage/${classList.class_image}" style="width: 90px; height: 50px;">
				</div>
				<div class="classInfo-description">
					<span>${classList.class_title}</span>
					<div>${classList.class_creatorName} | ${classList.class_category}</div>
				</div>
			</div>
			<div class="classStatus-specificMenu">
				<a href="javascript:void(0)" id="detail-btn">
					<div>
						<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-three-dots-vertical" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/></svg>
					</div>
				</a>
			</div>
			<div class="detail-box display-toggle">
				<a href="<%=request.getContextPath()%>/class?code=${classList.class_code}">상세정보 확인</a>
			</div>
		</div>	
		<div class="classStatus-currentInfo">
			<div class="detail-description">클래스 정보</div>
			<div class="classStatus-specifyInfo">
				<div class="classStatus-progressContainer">
					<div class="classStatus-classNumber">
						<div class="classStatus-totalNumber">
							<span>전체 클래스 갯수: ${fn:length(subChapter)}개</span>
						</div>
						<div class="classStatus-totalChapterNumber">
							<span>챕터 갯수: ${fn:length(mainChapter)}개</span>
						</div>
					</div>
					<div class="classStatus-personalContainer">
						<div>클래스 진행도</div>
					</div>
				</div>
				<div></div>
			</div>
		</div>
		<a href="#" class="getToClassLink">
			<div>클래스 수강하기</div>
		</a>
	</div>
</div>