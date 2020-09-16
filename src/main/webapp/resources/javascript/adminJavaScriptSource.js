$(function(){

	$('.addClass_finalSubmit').change(function(){ 
	
		if ($(this).val() == 'Y'){
			
			$(this).parents().find('.openDate-container').removeClass('display-toggle');
		}
		
		if ($(this).val() == 'N'){
	
			$(this).parents().find('.openDate-container').addClass('display-toggle');
		}

	});

	$( "#addClass_openDate" ).datepicker({
	                      
		dateFormat: 'yy-mm-dd',
		changeMonth: true, 
		changeYear: true,
		nextText: '다음 달',
		prevText: '이전 달', 
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		minDate: 0,        
		maxDate: 14          
	 
	});

});