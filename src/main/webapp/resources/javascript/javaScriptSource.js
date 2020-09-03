$(function(){
	
	// 현재 날짜 확인
	
	let today = new Date();

	let thisMonth = today.getMonth();
	let thisYear = today.getFullYear();
	let thisDate = today.getDate(); // 이건 나중에 강의 기한 확인 할 때 사용
	
	
	// 카드 유효 기간 셀렉트 박스 자동 생성
	
	addYearAndMonth();
	
	function addYearAndMonth() {
	
		for (var i = 1; i <= 9 ; i++){
		
			$('#payment_dueMonth').append('<option value="' + i + '">0' + i + '</option>');    
			
		}
		for (var i = 10; i <= 12 ; i++){
		
			$('#payment_dueMonth').append('<option value="' + i + '">' + i + '</option>');    
			
		}

		for (var i = (thisYear - 2000); i <= (thisYear + 5 - 2000) ; i++){
		
			$('#payment_dueYear').append('<option value="' + i + '">' + i + '</option>');    
			
		}

	}	
	
	// 클래스 페이지 구성 단계
	
	// 첫째 버튼
	$('#class-basicInfo').on('click',function(){
	
		$('.applyClass-basicInfo').removeClass('display-toggle');
		$('.applyClass-introduction').addClass('display-toggle');
		$('.applyClass-creatorInfo').addClass('display-toggle');
		$('.applyClass-classCheck').addClass('display-toggle');
	});
		
	// 둘째 버튼
	
	$('#class-introduction').on('click',function(){
		
		$('.applyClass-introduction').removeClass('display-toggle');
		$('.applyClass-basicInfo').addClass('display-toggle');
		$('.applyClass-creatorInfo').addClass('display-toggle');
		$('.applyClass-classCheck').addClass('display-toggle');
	});
	
	// 셋째 버튼 추가
	$('#class-creatorIntroduction').on('click',function(){
	
		$('.applyClass-basicInfo').addClass('display-toggle');
		$('.applyClass-introduction').addClass('display-toggle');
		$('.applyClass-creatorInfo').removeClass('display-toggle');
		$('.applyClass-classCheck').addClass('display-toggle');
	
	});
	
	// 마지막 버튼 추가
	$('#class-confirmFinal').on('click',function(){
		
		$('.applyClass-basicInfo').addClass('display-toggle');
		$('.applyClass-introduction').addClass('display-toggle');
		$('.applyClass-creatorInfo').addClass('display-toggle');
		$('.applyClass-classCheck').removeClass('display-toggle');
		
		
	});
	
		// 카테고리 반영
				
				$("#addClass_category").change(function(){
					$("#type").text($("#addClass_category").val());
				});
				
				// 제목 입력 반영
				
				$("#addClass_title").keyup(function(){
					$("#class-title").text($("#addClass_title").val());
					$("#image-container-title").text($("#addClass_title").val());
				});
				
				// 간단한 설명 반영
				
				$(".shortIntro").keyup(function(){
					$("#smallDescription").text($(".shortIntro").val());
				});
				
				// 썸네일
				$("#addClass_image2").change(function() {
   					getThumbNail(this);
				});
	
	
	// 섬네일 제작
		
	function getThumbNail(input){
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(event){
				$('#previewImage').attr('src', event.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	// 패키지 유무 확인 스크립트
	$('input[type=radio][name=addClass_hasPackage]').on('click',function(){
	
		var value = $('input[type=radio][name=addClass_hasPackage]:checked').val();
	
		if (value == 'y'){

			$('.setPackageContent').css('display', 'block');
		}
		
		if (value == 'n'){

			$('.setPackageContent').css('display', 'none');

		}
	
	});
	

	// 소챕터
	$('.add-subChapter').on('click', function(){
					
		var addInput = "<input type=\"text\" name=\"conSubChapter_title\" id=\"conSubChapter_title\"><a href=\"javascript:void(0)\" class=\"delete-subChapter\" name=\"delete-subChapter\" style=\"margin-left: 10px;\"><i class=\"fas fa-times\"></i></a><input type=\"number\" id=\"conSubChapter_num\" name=\"conSubChapter_num\" value=\"1\">"
		$(this).prev().append(addInput);
		
		$('.delete-subChapter').last().click(function(){
			$(this).prev().remove();
			$(this).remove();
			
		});
		var count = $(this).parent().siblings('input[name=conSubChapter_num]').val();
			count += 1;
		$(this).parent().siblings('input[name=conSubChapter_num]').val(count);	
		console.log(count);
					
	});
				
				
	// 메인 챕터
	$('#add-mainChapter').on('click', function(){
	
		var addMainInput = "<div class=\"section-wholeChapter\"><div class=\"section-mainChapter\"><input type=\"text\" name=\"conMainChapter_title\" id=\"conMainChapter_title\"><a href=\"javascript:void(0)\" class=\"delete-mainChapter\" name=\"delete-mainChapter\" style=\"margin-left: 10px;\"><i class=\"fas fa-times\"></i></a><input type=\"number\" id=\"conMainChapter_num\" name=\"conMainChapter_num\" value=\"2\"></div><div class=\"section-subChapter\"><div class=\"subChapterArea\" id=\"subChapterArea\" name=\"subChapterArea\"><input type=\"text\" name=\"conSubChapter_title\" id=\"conSubChapter_title\"></div><input type=\"number\" id=\"conSubChapter_num\" name=\"conSubChapter_num\" value=\"1\"><a href=\"javascript:void(0)\" id=\"add-subChapter\" class=\"add-subChapter\"><div>소챕터 추가</div></a></div></div>"
		
		$('#addCurriculum').append(addMainInput);
		
		var count = $(this).parent().siblings('input[name=conMainChapter_num]').val();
				count += 1;
		$(this).parent().siblings('input[name=conMainChapter_num]').val(count);	
		console.log(count);
		
		// 소챕터
		$('.add-subChapter').off("click").on('click', function(){ // off로 중복 적용 방지!
					
			var addInput = "<input type=\"text\" name=\"conSubChapter_title\" id=\"conSubChapter_title\"><a href=\"javascript:void(0)\" class=\"delete-subChapter\" name=\"delete-subChapter\" style=\"margin-left: 10px;\"><i class=\"fas fa-times\"></i></a><input type=\"number\" id=\"conSubChapter_num\" name=\"conSubChapter_num\" value=\"1\">"
			$(this).prev().append(addInput);
		
			$('.delete-subChapter').last().click(function(){
				$(this).prev().remove();
				$(this).remove();
			
			});
			
			var count = $(this).parent().siblings('input[name=conSubChapter_num]').val();
					count += 1;
			$(this).parent().siblings('input[name=conSubChapter_num]').val(count);	
			console.log(count);
					
		});
		
		// 메인챕터 삭제 구문
		$('.delete-mainChapter').click(function(){
			$(this).parents('.section-wholeChapter').remove();
		
			
		});
					
	});

	



	// 썸머노트 추가
		
	$('#addClass_setPackage').summernote({
		
	});
	
	$('#addClass_creator').summernote({
		
	});
		
	
	window.onscroll = function() {scrollFunction()};
	
	
	var stickyTab = document.getElementsByClassName("stickyTab")[0];
	var sticky = stickyTab.offsetTop;

	function scrollFunction() {
		if (window.pageYOffset >= sticky){
			stickyTab.classList.add("sticky");
			
		} else {
			stickyTab.classList.remove("sticky");
		
		}
	}
	
	
	// 개인, 법인 카드에 따라 옵션 변화
	
	cardType();
	
	function cardType() {
	
		var type = document.getElementById('card-option');
		var vel = type.options[type.selectedIndex].value;
		
		$('#card-option').change(function(){
			if ($('#card-option').val() === "business-card"){
				
			}
		});
	}
	
	
	var waypoint = new Waypoint({
  		element: document.getElementById('mainPage'),
  		handler: function(direction) {
    		console.log('Scrolled to waypoint!')
  		}
	})

	
	
})