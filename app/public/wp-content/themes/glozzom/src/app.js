
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

// Contact Us JS and AJAX call
jQuery(function(){
      jQuery.getElementById('#form_contact').submit(function(){
            (event) => {
                  event.preventDefault(); 
                  }

      var name = $('input[name=name]').val();
      var email = $('input[name=email]').val();
      var phone = $('input[name=phone]').val();
      var message = $('textarea[name=message]').val();

      var data = {
            'action' : 'contact_form',
            'name' : name,
            'email' : email,
            'phone' : phone,
            'message' : message
      };

      jQuery.ajax({
            type: 'POST',
            url: '/wp-admin/admin-ajax.php',
            data: data,
            beforeSend: (xhr) => {
            },
            success: function (data){
            if(data){
                  var response = JSON.parse(data);

                  if(response.status == false){
                        console.log(response.message);
                  }

                  if (response.status == true) {
                        $('#form_contact')[0].reset();
                  }
                  }
            },
            error: (xhr, ajaxOptions, thrownError) => {
            }
      });
      });
});