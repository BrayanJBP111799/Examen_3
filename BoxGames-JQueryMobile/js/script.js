$(document).ready(function(){

	$('#topBtn').click(function(){
		$('body, html').animate({
			scrollTop :'0px'
		},800);
	});

	$(window).scroll(function(){
		if($(this).scrollTop() > 40){
			$('#topBtn').slideDown(200);
		}else{
			$('#topBtn').slideUp(200);
		}
	});
});