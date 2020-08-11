$(function() {
 $('.btn_login').click(function() {
     $('.modal_wrap').fadeIn()
 })

 $('.btn_close').click(function() {
     $('.modal_wrap').fadeOut()
 })

 $('.show_comments_open').click(function() {
     $('.show_comments_index').slideDown(400, function() {
         $('.show_comments_open').fadeOut();
     });
 })

 $('.btn_close-comment').click(function() {
     $('.show_comments_index').fadeOut();
 })
})