$(document).ready(function() {
	load = true;
	var baseSlider = '#slider-';
	var baseThumbs = '#carousel-';
	var start = 1;
	
	$('.slides').each(function(){
		
		var carousel = baseThumbs+start;
		var slider = baseSlider+start;
		
		$(carousel).flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 100,
        itemMargin: 5,
        asNavFor: slider
      });
      
      $(slider).flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: true,
        slideshow: false,
        sync: carousel,
        start: function(slider){
          $('body').removeClass('loading');
        },
        controlsContainer: 'flex-container'
      });
      
      start++;
	
	});

	var globalTracker;

	$(".toggle-modal").click(function(){	
		toggleModal(globalTracker);
		return false;
	});
	
	$(".view-gallery").click(function(e){
		e.preventDefault();
		$('html,body').animate({scrollTop:0},500);
		var url = $(this).attr('href');
		globalTracker = url.substring(url.indexOf("#")+1);
		toggleModal(globalTracker);			
		return false;
	});


});

function toggleModal(id)
{
	var objects = ".opaque-layer, #modal-" + id;
	$(objects).toggleClass("active");
} 