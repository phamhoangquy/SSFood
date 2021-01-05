$(document).ready(function() {
    setBackgroundElement();
    // header
    mappingMenu();
    toggleMobileMenu();
    // swiper
    swiperInit();

});

function height(el) {
    var height = 0;
    $(el).each(function() {
        var thisHeight = $(this).height();
        if (thisHeight > height) {
            height = thisHeight;
        }
        setTimeout(() => {
            $(el).height(height)
        }, 100)
    })
}

let header = {
    scrollActive: function() {
        let height = $('header').height()
        if ($(window).scrollTop() > height) {
            $('header').addClass('active')
        } else {
            $('header').removeClass('active')
        }
    },
}

function setBackgroundElement() {
    $('[setBackground]').each(function() {
        var background = $(this).attr('setBackground')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center"
        });
    });
    $('[setBackgroundRepeat]').each(function() {
        var background = $(this).attr('setBackgroundRepeat')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat"
        });
    });
}

function toggleMobileMenu() {
    $('.header_btn').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
    });
    $('.overlay').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
    });
    $('.search-icon').click(function() {
        $(this).toggleClass("click");
        $('.block_search').toggleClass("show");
    });
}


function mappingMenu() {
    $('header .menu-left .nav-menu').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .menu-left',
        desktopMethod: 'prependTo',
        breakpoint: 1280
    });
    $('header .menu-right .nav-menu').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .menu-right',
        desktopMethod: 'prependTo',
        breakpoint: 1280
    });
    $('header .menu-right .wapper-hotline .hotline').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .menu-right .wapper-hotline',
        desktopMethod: 'prependTo',
        breakpoint: 1280
    });
}

function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        slidesPerColumnFill: "row",
        autoplay: {
            delay: 3000
        },
        navigation: {
            nextEl: '.home-banner .nav-arrow-next',
            prevEl: '.home-banner .nav-arrow-prev',
        },
    });
    var certificatesSwiper = new Swiper(".home_s-5 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 3,
            },
            768: {
                slidesPerView: 4,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 5,
            },
        },

    });
}

$(document).on('scroll', function() {
    header.scrollActive()
});