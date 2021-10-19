// (function($) {
//
//   var hamburger = $('.mobile-menu');
//   var menu = $('#menu-hlavni-menu');
//   var close = $('.close-mobile-menu');
//
//   hamburger.on('click', function(event) {
//     event.preventDefault();
//     menu.addClass('activate');
//     close.addClass('activate');
//
//     if (close.hasClass('activate')) {
//       close.on('click', function(event) {
//         event.preventDefault();
//         $(this).removeClass('activate');
//         menu.removeClass('activate');
//       });
//     }
//
//     // if (menu.hasClass('activate')) {
//     //   $("<span>X</span>").addClass('close-mobile-menu').insertAfter( menu );
//     // }
//   });
//
//
//
// })(jQuery);
