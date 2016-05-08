$(document).ready(function () {
  jQuery(window).on('load', function(){
    $('.grid').masonry({
      // set itemSelector so .grid-sizer is not used in layout
      itemSelector: '.grid-item',
      // use element for option
      columnWidth: '.grid-sizer',
      percentPosition: true,
      gutter: 10
    })
  })
  $('.bxslider').bxSlider({
    auto: true,
    autoControls: true,
    adaptiveHeight: true,
    mode: 'horizontal',
    slideWidth: 1000,
    minSlides: 1,
    maxSlides: 1,
    slideMargin: 10
  });
});