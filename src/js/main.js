$(document).ready(function() {
    setBackgroundElement();
    mappingMenu();
    toggleMobileMenu();
    swiperInit();
    productDetailSlide();
    tabActive();
    sideNav()
    showBackToTop();
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

function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper .tab-item.active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
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
// Slide product-detail
function productDetailSlide() {
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 20,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            576: {
                slidesPerView: 3,
            },
            1000: {
                slidesPerView: 4,
            }
        }
    });
    var galleryTop = new Swiper('.gallery-top', {
        spaceBetween: 20,
        thumbs: {
            swiper: galleryThumbs
        },
        navigation: {
            nextEl: '.nav-next',
            prevEl: '.nav-prev',
        },
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
                slidesPerView: 2,
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
    var aboutNewsSwiper = new Swiper(".about-2 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 30,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.about-2 .nav-arrow-next',
            prevEl: '.about-2 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        },
    });
    var aboutCertificatesSwiper = new Swiper(".about-4 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.about-4 .nav-arrow-next',
            prevEl: '.about-4 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 2,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 4,
            },
            768: {
                slidesPerView: 5,
            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 7,
            },
        },
    });
    var aboutClientSwiper = new Swiper(".about-6 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.about-6 .nav-arrow-next',
            prevEl: '.about-6 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 2,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 4,
            },
            768: {
                slidesPerView: 5,
            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 7,
            },
        },
    });
}

// toggle-product-list
function sideNav() {
    let btn = $('.product-list .item-product-list .content ul li .title-pro-zone span');
    let subMenuProduct = $('.product-list .item-product-list .content .sub-product');
    if ($('.product-list .item-product-list .content ul li.has-dropdown').hasClass('active')) {
        $('.product-list .item-product-list .content ul li.has-dropdown.active .sub-product').slideDown();
    }
    btn.on('click', function() {
        if ($(this).parents('.has-dropdown').hasClass('active')) {
            $('.product-list .item-product-list .content ul li.has-dropdown').removeClass('active')
            subMenuProduct.slideUp();
            $(this).parents('.has-dropdown').removeClass('active').find('.sub-product').slideUp();
        } else {
            subMenuProduct.slideUp();
            $(this).parents('.has-dropdown').addClass('active').find('.sub-product').slideDown();
        }
    })
}

function showBackToTop() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('#back-to-top').addClass('active');
        } else {
            $('#back-to-top').removeClass('active');
        }
    });

    $("#back-to-top").on("click", function(e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        })
    })
}
$(document).on('scroll', function() {
    header.scrollActive()
});