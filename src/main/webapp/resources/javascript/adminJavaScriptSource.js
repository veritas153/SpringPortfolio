j3(function(){

	j3('.addClass_finalSubmit').change(function(){ 
	
		if (j3(this).val() == 'Y'){
			
			j3(this).parents().find('.openDate-container').removeClass('display-toggle');
		}
		
		if (j3(this).val() == 'N'){
	
			j3(this).parents().find('.openDate-container').addClass('display-toggle');
		}

	});
	
	
	j3('.mainChapterButton').click(function(){
		j3(this).siblings('.curriculum-subChapterContainer').slideToggle(300, 'linear');
	});

	j3('.subChapterButton').click(function(){
		j3(this).next('.subChapter-content').slideToggle(300, 'linear');
	});
	
	j3('#summernote').summernote({
	
	
	});
	
	j3('#service_private').change(function(){
	
		if (j3(this).is(":checked") == true) {
			j3(this).val() == 'Y';
			j3(this).next().toggleClass('display-toggle');
		}
		
		if (j3(this).is(":checked") == false) {
			j3(this).val() == 'N';
			j3(this).next().toggleClass('display-toggle');
		}
	
	});
	
	
});
