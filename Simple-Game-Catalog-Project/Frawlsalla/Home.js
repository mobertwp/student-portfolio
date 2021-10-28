$(document).ready(function(){
    $('.next-arrow').on('click', function(){
        var currImg = $('.active');
        var nextImg  = currImg.next();
        if (nextImg.length) {
            currImg.removeClass('active').css('z-index', -1);
            nextImg.addClass('active').css('z-index', 1);
        }
    });
    $('.prev-arrow').on('click', function(){
        var currImg = $('.active');
        var prevImg  = currImg.prev();
        if (prevImg.length) {
            currImg.removeClass('active').css('z-index', -1);
            prevImg.addClass('active').css('z-index', 1);
        }
    });
});