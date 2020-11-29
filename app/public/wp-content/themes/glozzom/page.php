<?php get_header(); ?>


    <!-- PAGE HEADER -->

    <header id="page-header" class="page-header">
        <div class="container">
            <div class="row">
                
            </div>
        </div>
    </header>

    <!-- ABOUT SECTION -->

    <?php while(have_posts()) {
        the_post();
     ?>

    <section id="about" class="py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="text-center"><?php the_title(); ?></h1>
                    <p class="my-4"><?php the_content(); ?></p>
                </div>
                <div class="col-md-6 my-4">

                    <?php 
                    
                        $image = get_field('about_us_image');
                    
                    ?>
                    <img src="<?php echo $image;?>" alt="" class="img-fluid rounded-circle d-none d-md-block about-img">
                </div>
            </div>
        </div>
    </section>

<!-- ICON BOXES -->

    <section id="icon-boxes" class="p-5">
        <div class="container">
            <div class="row mb-4">
                <div class="col-md-4">
                    <div class="card bg-danger text-white text-center">
                        <div class="card-body">
                            <i class="fas fa-building fa-3x">                             
                            </i>
                            <h3>Sample Heading</h3>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet, ducimus.
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-body">
                            <i class="fas fa-bullhorn fa-3x">
                            </i>
                            <h3>Sample Heading</h3>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet, ducimus.
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-danger text-white text-center">
                        <div class="card-body">
                            <i class="fas fa-comments fa-3x">
                            </i>
                            <h3>Sample Heading</h3>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet, ducimus.
                        </div>
                    </div>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-body">
                            <i class="fas fa-box fa-3x">
                            </i>
                            <h3>Sample Heading</h3>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet, ducimus.
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-danger text-white text-center">
                        <div class="card-body">
                            <i class="fas fa-credit-card fa-3x">
                            </i>
                            <h3>Sample Heading</h3>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet, ducimus.
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-body">
                            <i class="fas fa-coffee fa-3x">
                            </i>
                            <h3>Sample Heading</h3>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Amet, ducimus.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- TESTIMONIALS -->

    <section id="testimonials" class="p-4 bg-dark text-white">
        <div class="container">
            <h2 class="text-center">
                Testimonials
            </h2>

    <?php
    // Check rows exists.
    if( have_rows('testimonials') ): ?>

        <div class="row text-center">
            <div class="col">
                <div class="slider testimonial">

    <?php
        // Loop through rows.
        while( have_rows('testimonials') ) : the_row();

            $testimonial = get_sub_field('testimonial_comment');
            $author      = get_sub_field('testimonial_author');
            $company     = get_sub_field('testimonial_company');

            ?>

                <div>
                    <blockquote class="blockquote">
                        <p class="mb-0">
                            <?php echo $testimonial ?>
                        </p>
                        <footer class="blockquote-footer"><?php echo $author;  ?>
                            <cite title="Company 1">from <?php echo $company; ?></cite>
                        </footer>
                    </blockquote>
                </div>

        <?php endwhile; ?>

                    </div>
                </div>
            </div>

    <?php endif; ?>

            </div)>
        </section>


    <?php 
        }

get_footer(); ?>