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

$(document).ready(function(){

//	$('#topBtnC').click(function(){
//		$('body, html').animate({
//			scrollTop :'0px'
//		},800);
//	});

	$(window).scroll(function(){
		if($(this).scrollTop() > 40){
			$('#topBtnC').slideDown(200);
		}else{
			$('#topBtnC').slideUp(200);
		}
	});
});