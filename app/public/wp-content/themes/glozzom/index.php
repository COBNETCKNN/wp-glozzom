<?php get_header(); ?>

 <!-- PAGE HEADER -->

    <header id="page-header" class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>Read Our Blog</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, dolores.</p>
                </div>
            </div>
        </div>
    </header>

<section id="blog" class="py-3">
    <div class="container">
        <div class="row">
            <?php while( have_posts() ) {
                the_post();
                ?>
                <div class="col d-flex align-items-stretch">
                    <div class="card">
                        <img src="<?php the_post_thumbnail_url('medium')?>" alt="" class="img-fluid card-img-top">
                        <div class="card-body">
                            <h4 class="card-title">
                                <?php the_title(); ?>
                            </h4>
                            <small class="text-muted">Written by <?php the_author_posts_link(); ?></small>
                            <hr>
                            <p class="card-text"><?php echo wp_trim_words(get_the_content(), 22); ?></p>
                            <a href="<?php the_permalink();?>" class="btn btn-dark w-100">Read More</a>
                        </div>
                     </div>
                    </div>
                <?php } ?>
            </div>
        </div>
</section>


<?php get_footer(); ?>