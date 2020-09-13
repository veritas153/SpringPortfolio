<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="applyClass-leftContainer">
	<div class="applyClass-stepContainer">
		<a href="javascript:void(0)" id="class-basicInfo">
			<div class="applyClass-steps">
				<span>&#9312;</span>
				<span>기본 정보</span>
			</div>
		</a>
		<a href="javascript:void(0)" id="class-introduction">
			<div class="applyClass-steps">
				<span>&#9313;</span>
				<span>클래스 소개</span>
			</div>
		</a>
		<a href="javascript:void(0)" id="class-creatorIntroduction">
			<div class="applyClass-steps">
				<span>&#9314;</span>
				<span>크리에이터 소개</span>
			</div>
		</a>
		<a href="javascript:void(0)" id="class-confirmFinal">			
			<div class="applyClass-steps">
				<span>&#9315;</span>
				<span>신청 전 확인</span>
			</div>
		</a>
	</div>
	<div class="sessionOut">
		<a href="<%=request.getContextPath()%>/creator">
			<span>나가기</span>
		</a>
	</div>
</div>
<div class="applyClass-rightContainer">
	<div class="applyClass-classInfos">
		<div id="pageView">
			<form method="post" action="<%=request.getContextPath()%>/creator/applyClass" enctype="multipart/form-data">
				<div class="applyClass-basicInfo">
					<div class="basicInfo-title">
						<span class="progress-title">당신의 클래스를 알려주세요.</span>
						<div class="progress-description">당신이 가르치고 싶은 분야와 특징들을 간단하게 알려주세요. </div>
					</div>
					<div class="progress-title">카테고리</div>
					<div class="progress-category">
						<select class="classCategory" id="addClass_category" name="addClass_category">
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
						<input type="text" class="class_title" name="addClass_title" id="addClass_title" placeholder="클래스 제목을 입력하세요">
					</div>
					<div class="progress-shortIntro">
						<div>짧은 소개글</div>
						<input type="text" class="shortIntro" name="addClass_thumbIntro" id="addClass_thumbIntro" placeholder="100자 내외의 짧은 소개글을 작성해 주세요." maxlength="100"></input>
					</div>
					<div class="image-box">
						<div>대표 이미지</div>
						<span>.jpeg 계열(.jpg, .jpeg, .jpe, .jfif) 또는 png만 가능합니다.</span>
						<input type="file" id="addClass_image2" name="addClass_image2" accept="image/jpeg, image/png">
					</div>
				</div>
				<div class="applyClass-introduction display-toggle">
					<div class="basicInfo-title">
						<span class="progress-title">그래서 구성은 어떻게 되십니까?</span>
						<div class="progress-description">일단, 커리큘럼을 간단하게 작성하세요. <br>
											자세한 사항은 저희 Aurts가 수정 및 협의를 제안할 예정입니다.</div>
					</div>
					<div class="class-detailedIntroduction">클래스 소개
						<div class="">
							<span>누가, 어떤 목적으로, 어떤 사람이 내 클래스를 들어야 하는지 적어주세요.</span>
						</div>
						<textarea rows="5" cols="100%" style="resize: none;" id="addClass_introduction" name="addClass_introduction"></textarea>
					</div>
					<div class="class-setPrice">
						<span>예측 수강 기간을 선택해주세요.</span>
						<p> 해당 기간에 따라 수업료가 할부로 책정 됩니다. (1개월 = 4주 / 3개월 = 12주 / 5개월 = 20주 / 6개월 = 25주 / 12개월 = 1년)</p>
						<div class="setPrice">
							<select class="addClass_monthly" name="addClass_monthly" id="addClass_monthly">
								<option value="0">선택하세요</option>
								<option value="1">1개월</option>
								<option value="3">3개월</option>
								<option value="5">5개월</option>
								<option value="6">6개월</option>
								<option value="12">12개월</option>
							</select>
							<input type="number" placeholder="가격을 입력해주세요" id="addClass_price" name="addClass_price">
						</div>
					</div>
					<div class="class-setPackage">
						<span>패키지 유무</span>
						<div class="class-isPackage">
							<input type="radio" name="addClass_hasPackage" id="addClass_hasPackage" value="y"> 패키지 있음
							<input type="radio" name="addClass_hasPackage" id="addClass_hasPackage" value="n"> 패키지 없음
						</div>
						<div class="setPackageContent">
							<span>클래스에 필요한 패키지 구성을 상세하게 작성해주세요.</span>
							<textarea id="addClass_setPackage" name="addClass_setPackage"></textarea>
						</div>
					</div>
					<div class="class-classDifficulty">
						<span>클래스 난이도</span>
						<div class="">
							<span>클래스 수준을 설정해주세요.</span>
						</div>
						<div class="classDifficulty">
							<select id="addClass_difficulty" name="addClass_difficulty">
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
						<div class="">본격적인 콘텐츠는 개설 승인 이후 업로드가 가능합니다. 때문에 신청 전에 수업 구성 및 순서를 먼저 정해주시고 작성해 주세요. <br>
						 커리큘럼은 승인 이후에도 수정이 가능하니 이점 참고해 주십시요.</div>
						<div class="addCurriculum" id="addCurriculum" name="addCurriculum">
							<div class="section-wholeChapter">
								<div class="section-mainChapter">
									<input type="number" class="conMainChapter_number" id="conMainChapter_number" name="conMainChapter_number2" value="1">
									<input class="conSubChapter_number" id="conSubChapter_number" name="conSubChapter_number2" value="1">
									<input type="text" name="conMainChapter_title2" id="conMainChapter_title">
								</div>
								<div class="section-subChapter">
									<div class="subChapterArea" id="subChapterArea" name="subChapterArea">
										<div class="subChapter-container">
											<input type="text" name="conSubChapter_title2" id="conSubChapter_title">
										</div>
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
				</div>
				<div class="applyClass-creatorInfo display-toggle">
					<div>
						이제 당신을 멋들어지게 소개하세요!
						<span>누구보다 색다르게 남들과는 다른 크리에이터님을 표현해보세요!</span>
					</div>
 					<textarea id="addClass_creator" name="addClass_creator"></textarea>		
				</div>
				
				<!-- 마지막 부분 추가 예정 -->
				
				<div class="applyClass-classCheck display-toggle">
					<div class="">
						<div class="">
							<span>이제 거의 다 됐습니다!</span>
						</div>
						<div class="applyClass-notification-container">
							<div class="applyClass-notification">
								<span>신청하기 전 아래에 서술된 주의 사항을 숙지해주세요.</span>
								1. 개설 신청 후 신청일 기준에서 7일 내에 승인 여부 또는 수정 사항을 알려줄 것입니다. <br>
								컨텐츠 여부 및 적합도에 따라 신청 클래스가 개설 되지 않을 수도 있음을 숙지해주세요. <br>
								만일 7일 이후에도 콘텐츠 팀의 피드백이 오지 않았다면, 고객 센터에 문의해 주십시요.<br><br>
								2. 본격적인 콘텐츠 추가는 1차 승인 이후 추가가 가능합니다. 단, 승인일을 기준으로 14일 이후에도 콘텐츠 추가가 없을 경우엔 개설 취소로 간주됩니다. 때문에 클래스 신청하기 전 콘텐츠를 완성해 놓는 것을 권장 드립니다. <br>
								그러나 콘텐츠 수정 사유로 이를 넘기게 될 경우엔 1회 한정으로 7일 연장할 수 있으므로 필요한 경우 운영진에게 문의해 주십시오. (또는 그 이상 시간이 필요한 경우에도 고객센터에 문의 바랍니다.) <br><br>
								3. 최종본 업로드 일자를 기준으로 7일 이내에 수정 여부를 알려줄 예정입니다. 해당 피드백 고지일 기준으로 14일이 지나도 수정이 안되는 경우 또한 개설 취소 사유가 됩니다. <br><br>
								4. 가격은 크리에이터님의 의사가 우선적으로 반영됩니다. 단, Aurts 콘텐츠 팀의 판단 하에 비용수정을 제안 할 수도 있으며, 거절할 경우엔 개설 신청이 취소 될 수도 있음을 알려드립니다. <br><br>
								5. 개설 이후에도 Aurts 운영진 또는 회원들을 상대로 계약 위반 및 의무 불이행시 폐강 조치와 자격 박탈을 포함한 법적 절차를 이행할 예정이니 주의를 당부드립니다. <br><br>
								6. 강의를 통한 수익은 처음 개강일을 기준으로 매월 동일 날짜에 지급될 예정입니다. 자세한 수익 분배는 Aurts 크리에이터 전용 공지사항을 참고해주세요. <br><br>
							</div>
						</div>
					</div>
					<div>
						<span>모두 숙지하셨으면 개설 신청버튼을 눌러주세요. 버튼을 누르면 주의사항을 숙지 및 동의한 것으로 간주됩니다.</span>
						<button>개설 신청</button>
					</div>
				</div>
				
			</form>
		</div>
	</div>
	<div class="applyClass-classPreview">
		<div class="applyClass-previewStatus">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<figure class="class-image">	
						<img id="previewImage" src="#" alt="새 이미지" >
	  					<figcaption name="image-container" id="image-container">
	  						<h6 name="image-container-title" id="image-container-title"></h6>
	  						<div name="smallDescription" id="smallDescription"></div>
	  					</figcaption>
					</figure>
					<div class="class-info">
						<span id="instructor">${user.st_creator}</span>
						<span id="type"></span>
						<div class="class-title" id="class-title" name="class-title"></div>
					</div>
					<div class="d-flex">
						<div class="sub-group">
							<div class="like-number"><i class="far fa-heart" aria-hidden="true"></i> 0</div>
							<div class="recommend-number"><i class="far fa-thumbs-up" aria-hidden="true"></i> 0</div>
						</div>
						<small class="text-muted"></small>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>