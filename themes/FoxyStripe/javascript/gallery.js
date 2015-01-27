var globalTracker;

$(document).ready(function(){
	$(".toggle-modal").click(function(){	
		toggleModal(globalTracker);
		return false;
	});
	
	$(".view-gallery").click(function(e){
		e.preventDefault();
		globalTracker = $(this).attr('href');
		setupSliders(function(){  
			toggleModal(globalTracker);			
		});
		return false;
	});
});

function setupSliders(callback)
{
	var carousel = '.carousel-'+globalTracker;
	var slider = '.slider-'+globalTracker;
	
	$(carousel).flexslider({
		animation: "slide",
		controlNav: false,
		directionNav: true,
		animationLoop: true,
		slideshow: false,
		itemWidth: 92,
		asNavFor: slider
	});
	
	$(slider).flexslider({
		animation: "slide",
		animationSpeed: 400,
		controlNav: false,
		animationLoop: true,
		slideshow: false,
		sync: carousel,
		start: function(){ }
	});	
	callback();
}

function toggleModal(id)
{
	var objects = ".opaque-layer, #modal-" + id;
	$(objects).toggleClass("active");
} 