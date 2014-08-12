$(document).ready(function () {
    $(window).scroll(function () {
        console.log($(window).scrollTop());
        if ($(window).scrollTop() >= 56) {
            $('menu').addClass('onscroll');
        } else {
            $('menu').removeClass('onscroll');
        }
    });
    
});