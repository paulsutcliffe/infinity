// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


/*
==================================================================
HOME SLIDER
==================================================================
*/

$(document).ready(function($) {

    $('.royalSlider').royalSlider({
      autoPlay: {
      // autoplay options go gere
      enabled: true,
      pauseOnHover: true,
      stopAtAction: false
    },
    block: {
    // animated blocks options go gere
      fadeEffect: false,
      moveEffect: 'top',
      delay: 500,
      speed: 150,
      easing:'easeOutSine'
    },
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
    transitionType: 'move',
    keyboardNavEnabled: true,
    sliderDrag: true,
    sliderTouch: true,
    keyboardNavEnabled: true,
    });

  // PARTNERS
    $('ul.slider').royalSlider({
      autoPlay: {
      // autoplay options go gere
      enabled: true,
      pauseOnHover: true,
      stopAtAction: false,
      delay: 6000,
    },
    block: {
    // animated blocks options go gere
      fadeEffect: false,
      moveEffect: 'bottom',
      delay: 500,
      speed: 150,
      easing:'easeOutQuad'
    },
    transitionDuration:2000,
    arrowsNav: true,
    allowCSS3: true,
    arrowsNavAutoHide: false,
    fadeinLoadedSlide: false,
    controlNavigationSpacing: 0,
    imageScaleMode: 'none',
    imageAlignCenter:false,
    blockLoop: true,
    loop: true,
    numImagesToPreload: 6,
    transitionType: 'move',
    keyboardNavEnabled: true,
    sliderDrag: true,
    sliderTouch: true,
    keyboardNavEnabled: true,
    slidesOrientation: 'vertical',
    });


  // nested attributes
  $('a.add_child').live("click", function() {
    var association = $(this).attr('data-association');
    var template = $(this).prev().html();
    var regexp = new RegExp('new_' + association, 'g');
    var new_id = new Date().getTime();
    $(this).after(template.replace(regexp, new_id));
    return false;
  });

  $('a.remove_child').live('click', function() {
    var hidden_field = $(this).prev('input[type=hidden]')[0];
    if(hidden_field) {
      hidden_field.value = '1';
    }
    $(this).parents('.fields:first').hide();
    return false;
  });




});

