$(document).ready(function($) {

    $('.destination_pictures_container').royalSlider({
      autoPlay: {
      // autoplay options go gere
      enabled: true,
      pauseOnHover: true,
      stopAtAction: false
    },
    transitionType:'fade',
    arrowsNav: true,
    allowCSS3: true,
    arrowsNavAutoHide: false,
    fadeinLoadedSlide: false,
    controlNavigationSpacing: 0,
    controlNavigation: 'bullets',
    imageScaleMode: 'none',
    imageAlignCenter:false,
    blockLoop: true,
    loop: true,
    numImagesToPreload: 6,
    keyboardNavEnabled: true,
    sliderDrag: true,
    sliderTouch: true,
    keyboardNavEnabled: true,
    });

});
