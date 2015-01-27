$(document).ready(function() {
	var video = $('#video-object')[0];
	$("#video-overlay").hide();
  $(".VideoClick").on('click', function(e){
		e.preventDefault();
		$('#VideoClicker').css({'display':'block'});
		$("#video-overlay").fadeIn(300);
	});
  $(".VideoClose").on('click', function(e){
		e.preventDefault();
		video.pauseVideo();
		$("#video-overlay").fadeOut(300);
	});

	$(".overlay-container a[rel]").overlay();


});
