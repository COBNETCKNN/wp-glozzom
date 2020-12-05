
// Slick lightbox and carousel JS
jQuery(function () { jQuery('.gallery').slickLightbox({ 
      itemSelector: '> a' 
   });  });


jQuery(function(){
      jQuery('.testimonial').slick({
      infinite:true,
        centerMode: true,
        dots: true,
        speed: 500,
        cssEase: 'linear',
        useTransform: true,
        autoplay: true,
        autoplaySpeed: 7000,
        arrows: true
      });
});
