(function($) {

	// define variables
	var navOffset,
      scrollPos = 0;

	// add utility wrapper elements for positioning
	$("header").wrap('<div class="nav-placeholder"></div>');
	$("header").wrapInner('<div class="nav-inner"></div>');
	$(".nav-inner").wrapInner('<div class="nav-inner-most"></div>');

	// function to run on page load and window resize
	function stickyUtility() {

		// only update navOffset if it is not currently using fixed position
		if (!$("header").hasClass("fixed")) {
			navOffset = $("header").offset().top;
		}

		// apply matching height to nav wrapper div to avoid awkward content jumps
		$(".nav-placeholder").height($("header").outerHeight());

	} // end stickyUtility function

	// run on page load
	stickyUtility();

	// run on window resize
	$(window).resize(function() {
		stickyUtility();
	});

	// run on scroll event
	$(window).scroll(function() {

		scrollPos = $(window).scrollTop();

		if (scrollPos > navOffset) {
			$("header").addClass("fixed");
		} else {
			$("header").removeClass("fixed");
		}

	});

  var hamburger = $('#menu-state');
  var nav_inner = $('.nav-inner');
  var logo = $('.logo-wrap');


  hamburger.change(function(){
    if($(this).is(':checked')){
      nav_inner.height($(window).outerHeight());
    } else {
      nav_inner.height('auto');
    }
  });

  var anchors = $('.menu-icon').find('a');
  anchors.on('click', function(event) {
    event.preventDefault();
  });

})(jQuery);
