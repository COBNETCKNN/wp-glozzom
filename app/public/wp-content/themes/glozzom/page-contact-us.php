<?php get_header(); ?>

    <!-- PAGE HEADER -->

    <header id="page-header" class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>Contact Us</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, dolores.</p>
                </div>
            </div>
        </div>
    </header>

    <!-- GET IN TOUCH SECTION -->

    <?php 
    
        $text         = get_field('get_in_touch_text');
        $adress       = get_field('adress_contact_us');
        $email        = get_field('email_contact_us');
        $phone_number = get_field('phone_contact_us');
    
    ?>

    <section id="contact" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
            <div class="card p-4">
                <div class="card-body">
                    <h4>Get In Touch</h4>
                    <p><?php echo $text; ?></p>
                    <h4>Adress</h4>
                    <p><?php echo $adress; ?></p>
                    <h4>Email</h4>
                    <p><?php echo $email; ?></p>
                    <h4>Phone</h4>
                    <p><?php echo $phone_number; ?></p>
                </div>
            </div>
            </div>

        <!-- CONTACT US FORM -->  

            <div class="col-md-8">
                <div class="card p-4">
                    <div class="card-body">
                        <h3 class="text-center">Please Fill out this form to contact us</h3>
                        <hr>
                         <form id="form_contact">
                         <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                   <input type="text" name="name" class="form-control" placeholder="Your Name">
                                </div>
                            </div>
                        </div>                
                            <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="tel" name="phone" class="form-control" placeholder="Phone Number">
                                </div>
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                   <textarea name="message" class="form-control" placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-group">
                                    <button class="bnt btn-outline-dark btn-block">Submit</button>
                                </div>
                            </div>
                            </div>
                             </div>
                        </form>
                    </div>
                </div>
               </div>
           </div>
       </div>
   </section>  


    <!-- STAFF -->      

   <section id="staff" class="py-5 text-center bg-dark text-white">
       <div class="container">
           <h1>Our Staff</h1>
           <hr>


    <?php if( have_rows('staff_members') ): ?>

            <div class="row">

            <?php
            while( have_rows('staff_members') ) : the_row();

                $staff_name     = get_sub_field('staff_name');
                $staff_position = get_sub_field('staff_position');
                $staff_image    = get_sub_field('staff_picture');  ?>

                <div class="col-md-3">
                   <img src="<?php echo $staff_image; ?>" alt="" class="img-fluid rounded-circle mb-2">
                   <h4><?php echo $staff_name; ?></h4>
                   <small><?php echo $staff_position; ?></small>
               </div>

            <?php endwhile; ?>

            </div>

            <?php endif; ?>

         </div>
       </div>
   </section> 



<?php get_footer(); ?>