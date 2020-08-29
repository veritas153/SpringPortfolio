<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="applyClass-leftContainer">
	<div class="applyClass-stepContainer">
		<div class="applyClass-steps">
			<span>&#9312;</span>
			<span>기본 정보</span>
		</div>
		<div class="applyClass-steps">
			<span>&#9313;</span>
			<span>클래스 소개 및 대표 이미지</span>
		</div>
		<div class="applyClass-steps">
			<span>&#9314;</span>
			<span>크리에이터 소개</span>
		</div>
		<div class="applyClass-steps">
			<span>&#9315;</span>
			<span>제출 정보</span>
		</div>
		<div class="applyClass-steps">
			<span>&#9316;</span>
			<span>커리큘럼 설문조사</span>
		</div>
		<div class="applyClass-steps">
			<span>&#9317;</span>
			<span>신청 전 확인</span>
		</div>
	</div>
</div>
<div class="applyClass-rightContainer">
	<div class="applyClass-classInfos">
		<div class="applyClass-basicInfo">
			<div class="basicInfo-title">
				<span class="progress-title">당신의 클래스를 알려주세요.</span>
				<div class="progress-description">당신이 가르치고 싶은 분야와 특징들을 간단하게 알려주세요. <br>
				모든 과정은 저장되니 심사숙고하시면서 작성해주시면 됩니다.</div>
			</div>
			<form method="post" action="#">
				<div class="progress-title">카테고리</div>
				<div class="progress-category">
					<select class="classCategory">
						<option value="#">선택하세요.</option>
						<option value="#">순수미술</option>
						<option value="#">일러스트레이션</option>
						<option value="#">공예</option>
						<option value="#">운동</option>
						<option value="#">인문학</option>
						<option value="#">음악</option>
						<option value="#">프로그래밍</option>
						<option value="#">영상/편집</option>
					</select>
				</div>
				<div class="progress-title">
					<div>클래스 제목</div>
					<input type="text" class="class_name" name="class_name" id="class_name" placeholder="클래스 제목을 입력하세요">
				</div>
				<div class="progress-shortIntro">
					<div>짧은 소개글</div>
					<textarea class="shortIntro" placeholder="100자 내외의 짧은 소개글을 작성해 주세요."></textarea>
				</div>
			</form>
		</div>
		<div class="applyClass-introductionAndImage menu-toggle">
		
		</div>
		<div class="applyClass-creatorInfo menu-toggle">
		
		</div>
		<div class="applyClass-classData menu-toggle">
		
		</div>
		<div class="applyClass-classSurvey menu-toggle">
		
		</div>
		<div class="applyClass-confirmClass menu-toggle">
		
		</div>
	</div>
	<div class="applyClass-classPreview">
		<div class="applyClass-previewStatus">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<figure class="class-image">
	  					<img src="#">					
	  					<figcaption>
	  					
	  					</figcaption>
					</figure>
					<div class="class-info">
						<span id="instructor"></span>
						<span id="type"></span>
						<div class="class-title"></div>
					</div>
					<div class="d-flex">
						<div class="sub-group">
							<div class="like-number"><i class="far fa-heart" aria-hidden="true"></i> </div>
							<div class="recommend-number"><i class="far fa-thumbs-up" aria-hidden="true"></i> </div>
						</div>
						<small class="text-muted"></small>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>