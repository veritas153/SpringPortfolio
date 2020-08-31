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
	
	$('#class-basicInfo').on('click',function(){
		$.ajax({
			url:'/projectone/backLink/firstStep', // 백링크로 된거 수정해라!
			type:'GET',
			dataType: 'text',
			success: function(data){
				$('#pageView').html(data);
				
				// 카테고리 반영
				
				$("#classCategory").change(function(){
					$("#type").text($("#classCategory").val());
				});
				
				// 제목 입력 반영
				
				$("#class_name").keyup(function(){
					$("#class-title").text($("#class_name").val());
				});
				
				// 썸네일
				$("#imageFile").change(function() {
   					getThumbNail(this);
				});
			}
		});
		return false;
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
	
	
	// 둘째 버튼
	
	$('#class-introduction').on('click',function(){
		$.ajax({
			url:'/projectone/backLink/secondStep', // 백링크로 된거 수정해라!
			type:'GET',
			dataType: 'text',
			success: function(data){
				$('#pageView').html(data);
				
				// 커리큘럼 추가
				
				// 소챕터
				$('.add-subChapter').on('click', function(){
					
					var addInput = "<input type=\"text\" name=\"add-subChapter\" id=\"add-subChapter\">"
					$(this).prev().append(addInput);
					
					
				});
				
				
				// 메인 챕터
				$('#add-mainChapter').on('click', function(){
					
					var addMainInput = "<div class=\"section-wholeChapter\"><div class=\"section-mainChapter\"><input type=\"text\" name=\"mainChapter\" id=\"mainChapter\"></div><div class=\"section-subChapter\"><div class=\"subChapterArea\" id=\"subChapterArea\" name=\"subChapterArea\"><input type=\"text\" name=\"subChapter\" id=\"subChapter\"></div><a href=\"javascript:void(0)\" id=\"add-subChapter\" class=\"add-subChapter\"><div>소챕터 추가</div></a></div></div>"
					$('#addCurriculum').append(addMainInput);
					$('.add-subChapter').last().on('click', function(){
					
						var addInput = "<input type=\"text\" name=\"add-subChapter\" id=\"add-subChapter\">"
						$(this).prev().append(addInput);
						
						
					});
					
				});
				
				
			}
		});
		return false;	
	});


	// 셋째 버튼 추가
	
	$('#class-creatorIntroduction').on('click',function(){
		$.ajax({
			url:'/projectone/backLink/thirdStep', // 백링크로 된거 수정해라!
			type:'GET',
			dataType: 'text',
			success: function(data){
				$('#pageView').html(data);
				
				$('#summernote').summernote({
					placeholder: '크리에이터님을 소개하세요!',
					height: 250
				});
			}
		});
		return false;
	});
		
		
	// 마지막 버튼 추가
	
	$('#class-confirmFinal').on('click',function(){
		$.ajax({
			url:'/projectone/backLink/finalStep', // 백링크로 된거 수정해라!
			type:'GET',
			dataType: 'text',
			success: function(data){
				$('#pageView').html(data);
				
				
			}
		});
		return false;
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