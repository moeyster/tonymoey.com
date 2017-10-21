$( document ).ready(function() {
	/*--
		Preloader
	-----------------------------------*/
	$(window).on('load', function(){
		$('.preloader').fadeOut('slow');
	});
	/*--
		Menu Sticky
	-----------------------------------*/
	$(window).on('scroll', function() {
	    if( $(this).scrollTop() > 300 ) {
	        $('.header-area').addClass('stick slideInDown');
	    } else {
	        $('.header-area').removeClass('stick slideInDown');
	    }
	});

	/*--
		Skill Progress Bar
	-----------------------------------*/
	$( document ).ready(function() {
	  $('.progress-bar').appear(function() {
	      $('.progress-bar').each(function(){
	          /*-- Skill Animation --*/
	          $(this).css({'width': $(this).data('present'), 'opacity': '1', });
	      });
	  });
	});


	/*--
		Mobile Menu
	------------------------*/
	$('.main-menu nav').meanmenu({
		meanScreenWidth: '767',
	    onePage: true,
		meanMenuContainer: '.mobile-menu',
		meanMenuClose: '<span class="close-menu"><i></i></span>',
		meanMenuOpen: '<span class="open-menu"><i></i></span>',
		meanRevealPosition: 'right',
	});
	/*--
		One Page Menu
	-----------------------------------*/
	$('.main-menu nav, .mean-nav').onePageNav({
		currentClass: 'active',
		scrollThreshold: 0.2,
		scrollSpeed: 1000,
		scrollOffset: $('.header-area').height() + 10,
	});
	/*--
		Kenburne Slider
	-----------------------------------*/
	$(".kenburne-slider").kenburnsy({
	    fullscreen: true,
	});
	$('.bg-youtube-video').YTPlayer();
	$('.bg-vimeo-video').vimeo_player();

	$('.bg-selfhost-video').vide({
	    'mp4': 'video/shutter-island',
	    'poster': 'video/poster',
	}, {
		posterType: 'jpg',
	});

	/*--
		Counter Up
	-----------------------------------*/
	$('.counter').counterUp({
	    time: 3000,
	});
	/*--
		Portfolio Isotop With Image Loaded
	-----------------------------------------*/
	$('.portfolio-grid').imagesLoaded( function() {
	    /*-- Filter List --*/
	    $('.portfolio-filter').on( 'click', 'button', function() {
	        $('.portfolio-filter').find('button').removeClass('active');
	        $(this).addClass('active');
	        var $filterValue = $(this).attr('data-filter');
	        $('.portfolio-grid').isotope({ filter: $(this).attr('data-filter') });
	    });
	    /*-- Filter Grid --*/
	    $('.portfolio-grid').isotope({
	        itemSelector: $('.portfolio-grid-item'),
	        masonry: {
	            columnWidth: $('.portfolio-grid-item'),
	        }
	    });
	});
	/*--
		Magnific Popup
	-----------------------------------*/
	/*Image*/
	$('[data-image-popup]').magnificPopup({
	    type:'image',
	    gallery: {
	      enabled: true
	    },
	});
	/*Video*/
	$('[data-video-popup]').magnificPopup({
	    type:'iframe',
	    gallery: {
	      enabled: true
	    },
	});
	/*--
		Testimonial Slider
	-----------------------------------*/
	$('.testimonial-slider').slick({
	    slidesToShow: 1,
	    slidesToScroll: 1,
	    arrows: false,
	    dots: true,
	});
	/*--
		Smooth Scroll
	-----------------------------------*/
	$('.mean-nav > ul > li a, [data-scroll]').on('click', function() {
	    $.smoothScroll({
	        offset: -66,
	        scrollTarget: this.hash,
	        speed: 1000,
	    });
		return false;
	});
});
