<?php get_header(); ?>

    <header id="page-header" class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>Read Our Posts</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, dolores.</p>
                </div>
            </div>
        </div>
    </header>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-4 my-3 ">
                      <img src="<?php the_post_thumbnail_url('medium')?>" alt="" class="border border-dark rounded img-fluid card-img-top">
                </div>    
                <div class="col-md-8 my-3">
                <h4><?php the_title(); ?></h4>    
                <p class="my-2"><?php the_content(); ?></p> 
                <a href="<?php echo esc_url(site_url('/blog'));?>" class="btn btn-dark">See All Posts</a>
            </div>
            </div>
        </div>
    </section>


<?php get_footer(); ?>