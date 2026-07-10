$(function(){

//adds class ie10 for specific browswer fix
if (/*@cc_on!@*/false) {
    document.documentElement.className+=' ie10';
}

$('.splash').ready(function() {
  $('.coverup').fadeOut('slow');
});

//Portfolio Gallery functionality
 // alert($(window).width());
    $('.port-project .thumb').on('click',function(){
        $(this).next('.expand').slideDown();
        $('.title').animate({opacity: 0}, 100);
        $('.sheet').fadeIn();
      });

      $('.close-carousel').on('click',function(){
        $('.expand').slideUp();
        $('.title').animate({opacity: 1}, 100);
        $('.sheet').fadeOut();

      });

//More hovers on skills section
  if($('html').hasClass('ie9')){
    }else {
      $( ".profile.left" ).hover(function() {
        $('.more-design').stop().fadeToggle(100);
      });

      $( ".profile.right" ).hover(function() {
        $('.more-dev').stop().fadeToggle(100);
      });
    }

      $('.about').one('inview', function (event, visible) {
        if (visible === true) {
          $('.bio').delay(300).fadeTo('slow',1);
        }
      });

//Chrome especially...scroll up on refresh
//    $(window).on('beforeunload', function() {
//      $(window).scrollTop(0);
//    });


// Mobile device checker
    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
        
      $('.splash').css(
          'background-position', '50% 1%');

      } else{
        $('#fullpage').fullpage({
        });

      }

//      var ua = window.navigator.userAgent;
//    var msie = ua.indexOf("MSIE ");
//
//      if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {      // If Internet Explorer, return version number
//        }
    });


//fixed header toggle collapse fix
    $(function(){
      $(".navbar-nav li a, footer .container a").on('click',function() {
      
        if ($('.navbar-collapse').hasClass('in')){
            $('.navbar-collapse.in').delay(800).collapse('hide');
        }

      });

// smooth scroll
    $('a[href*=#]:not([href=#])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html,body').animate({
            scrollTop: target.offset().top
          }, 800);
          return false;
        }
      }
    });
});
