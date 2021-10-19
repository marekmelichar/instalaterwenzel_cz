(function($) {

    var container = $('#full-width-slider'),
				ul = container.find('ul'),
        li = ul.find('li'),
        i = $('#current').find('img').data('index'),
        size = 426;


    ul.css({
        width: li.length * li.outerWidth()
    });

    ul.animate({
        left: ul.position().left - size*(i-1)
		}, 1000);

    $('#prev, #next, #rotateIcon').click(function(e) {
        if ( ul.is(':animated') ) return false;

        if(e.target.id === 'next' || e.target.id === 'rotateIconNext') {
        	i = (++i <= li.length) ? i : 1;

        var newImg = $('img[data-index="'+i+'"]').clone();
            newImg.css({ left: size*2 }).appendTo('#current p');


        $('#current img:first-child').animate({ left: 0 }, 1000, function() { $(this).remove(); });
        $('#current img:last-child').animate({ left: size }, 1000);



            ul.animate({ left: ul.position().left - size }, 1000, function()

        {
            var tmp = ul.children(':first-child').detach();
            ul.append(tmp).css({ left: ul.position().left + size });

         });
      } else if (e.target.id === 'prev' || e.target.id === 'rotateIconPrev'){

        i = (--i >= 1) ? i : li.length;

        var newImg = $('img[data-index="'+i+'"]').clone();
            newImg.css({ left: 0 }).appendTo('#current p');

        $('#current img:first-child').animate({ left: size*2 }, 1000, function() { $(this).remove(); });
        $('#current img:last-child').animate({ left: size }, 1000);

            ul.animate({ left: ul.position().left + size }, 1000, function() {

            var tmp = ul.children(':last-child').detach();
            ul.prepend(tmp).css({ left: ul.position().left - size });

         });
      }
    });
})(jQuery);
