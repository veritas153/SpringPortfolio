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