$(function(){
	
	window.onscroll = function() {scrollFunction()};
	
	var stickyTab = document.getElementsByClassName("stickyTab");
	var sticky = stickyTab.offsetTop;
	
	function scrollFunction() {
		if (document.pageYOffset >= sticky){
			stickyTab.classList.add("sticky");
		} else {
			stickyTab.classList.remove("sticky");
		}
	}
	
})