<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="applyClass-introduction">
	<div class="basicInfo-title">
		<span class="progress-title">그래서 구성은 어떻게 되십니까?</span>
		<div class="progress-description">일단, 커리큘럼을 간단하게 작성하세요. <br>
							자세한 사항은 저희 Aurts가 수정 및 협의를 제안할 예정입니다.</div>
	</div>
	<div class="">
		<div class="">
		
		</div>
		<div class="">
		
		</div>
	</div>
	<form>
		<div class="class-detailedIntroduction">클래스 소개
			<div class="">
				<span>자신의 클래스를 </span>
			</div>
			<textarea rows="5" cols="100%" style="resize: none;"></textarea>
		</div>
		<div class="">
			
		</div>
		<div class="">
			<span>패키지 유무</span>
			<div class="class-isPackage">
				<input type="checkbox"> 패키지 있음
				<input type="checkbox"> 패키지 없음
			</div>
			<div class="">
				<span>클래스에 필요한 패키지 구성을 상세하게 작성해주세요.</span>
				<textarea rows="3" cols="100%" style="resize: none;"></textarea>
			</div>
		</div>
		<div class="">
			<span>클래스 난이도</span>
			<div class="">
				<span>클래스 수준을 설정해주세요.</span>
			</div>
			<div class="class-classDifficulty">
				<select class="">
					<option value="#">선택하세요</option>
					<option value="입문">입문자 대상</option>
					<option value="초급">초급자 대상</option>
					<option value="중급">중급자 대상</option>
					<option value="상급">상급자 대상</option>
				</select>
			</div>
		</div>
		<div class="class-curriculum">
			<span>수업 과정을 챕터별로 작성해주세요.</span>
			<div class="addCurriculum" id="addCurriculum" name="addCurriculum">
				<div class="section-wholeChapter">
					<div class="section-mainChapter">
						<input type="text" name="mainChapter" id="mainChapter">
					</div>
					<div class="section-subChapter">
						<div class="subChapterArea" id="subChapterArea" name="subChapterArea">
							<input type="text" name="subChapter" id="subChapter">
						</div>
						<a href="javascript:void(0)" id="add-subChapter" class="add-subChapter">
							<div>소챕터 추가</div>					
						</a>
					</div>
				</div>
			</div>
			<div class="mainbutton-container">
				<a href="javascript:void(0)" id="add-mainChapter">
					<div>메인 챕터 추가</div>
				</a>
			</div>		
		</div>
	</form>
</div>