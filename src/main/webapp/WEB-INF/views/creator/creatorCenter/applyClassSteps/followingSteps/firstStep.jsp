<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="applyClass-basicInfo">
		<div class="basicInfo-title">
			<span class="progress-title">당신의 클래스를 알려주세요.</span>
			<div class="progress-description">당신이 가르치고 싶은 분야와 특징들을 간단하게 알려주세요. <br>
							모든 과정은 저장되니 심사숙고하시면서 작성해주시면 됩니다.</div>
		</div>
		<form method="post" action="#">
			<div class="progress-title">카테고리</div>
			<div class="progress-category">
				<select class="classCategory" id="classCategory" name="classCategory">
					<option value="#">선택하세요.</option>
					<option value="순수미술">순수미술</option>
					<option value="일러스트레이션">일러스트레이션</option>
					<option value="공예">공예</option>
					<option value="운동">운동</option>
					<option value="인문학">인문학</option>
					<option value="음악">음악</option>
					<option value="프로그래밍">프로그래밍</option>
					<option value="영상/편집">영상/편집</option>
				</select>
			</div>
			<div>
				<div>클래스 제목</div>
				<input type="text" class="class_name" name="class_name" id="class_name" placeholder="클래스 제목을 입력하세요">
			</div>
			<div class="progress-shortIntro">
				<div>짧은 소개글</div>
				<input type="text" class="shortIntro" placeholder="100자 내외의 짧은 소개글을 작성해 주세요." maxlength="100"></input>
			</div>
			<div class="image-box">
				<div>대표 이미지</div>
				<span>.jpeg 계열(.jpg, .jpeg, .jpe, .jfif) 또는 png만 가능합니다.</span>
				<input type="file" id="imageFile" name="imageFile" accept="image/jpeg, image/png">
			</div>
		</form>
</div>