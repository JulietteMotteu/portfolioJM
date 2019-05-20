$(document).ready(function(){   
    // When window < 769 the vertical menu is removed
    function toggleMenu(event) {
        if (!window.matchMedia('(min-width: 769px)').matches) {
            nav.classList.toggle('menuHidden');
        }
    }

    let navIcon = document.getElementById ('nav-icon');
    let nav = document.querySelector('nav');
    let navLinks = document.querySelectorAll ('nav li');

    // Each click on the navIcon toggle the menu 
    navIcon.addEventListener('click', toggleMenu); 

    //Each click on a navigation link triggers the function so the menu closes
    for (var i = 0; i < navLinks.length; i++) {
        navLinks[i].addEventListener('click', toggleMenu);
    }

    // Navigation verticale
    function positionNav() {
        let hauteurFenetre = window.innerHeight;
        let largeurFenetre = window.innerWidth;
        let hauteurNav = navVerticale.offsetHeight;
        let lien = navVerticale.getElementsByTagName('li');

        if (largeurFenetre > 768) {
            navVerticale.style.top = (hauteurFenetre - hauteurNav)/2 + "px";
        }
    }

    positionNav();

    window.addEventListener('resize', function(e){
        positionNav();
    }); 

        // Anim hamburger
   navIcon.addEventListener('click', function(){
        $(this).toggleClass('open');
    });
    
 /*   $(body).click(function(){
        if ($('#nav-icon').hasClass('open')) {
        console.log('open');
            $("#nav-icon").toggleClass('open');
         }
    });*/

    // Scrollify
    function scrollIfDesktop() {
        if($(window).width() > 768) {
            $.scrollify({
                section : ".sectionNav",
                sectionName : "section-name",
                standardScrollElements: "#contact",
                interstitialSection : ".footerJM",
                afterResize: AOS.refresh,
                afterRender: AOS.refresh,
                touchScroll: false
            });
            $('.link').click(function(e){
                e.preventDefault();
                var moveTo = $(this).attr('href');
                $.scrollify.move(moveTo);
                console.log(moveTo);
            });
        }
        else {
            $.scrollify.destroy();
        }
    }

    /*On lance la fonction Scrollify*/
    scrollIfDesktop();
    /*Scrollify s'active ou pas au redimensionnement de la fenêtre*/
    $(window).on('resize', function () {
        scrollIfDesktop();
    });

    // Typetype
    var typed = new Typed('.typed', {
     /*   stringsElement: '.typed-strings',*/
        strings: ["Front-end developer"],
        typeSpeed: 80,
        contentType: 'html',
        cursorChar: '_',
        startDelay: 1000,
    });

    // IziModal
    $(".modalPortfolio").iziModal({
        headerColor: '#8132bc',
        transitionIn: 'comingIn',
        bodyOverflow: true,
        width: "100%",
        onOpened: function() {
            $.scrollify.disable();
//                    $(".modalPortfolio").html.css('display', 'block');
        },
        onClosing: function() {
            $.scrollify.enable();
        },
    });




    //AOS
    AOS.init({
        duration: 1000,
    });
})