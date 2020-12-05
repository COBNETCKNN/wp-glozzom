<?php get_header(); ?>

<!-- SHOWCASE SLIDER -->

<?php

// check if the repeater field has rows of data
if( have_rows('carousel_slider') ):
	$i = 1; // Set the increment variable
	
	echo '<div id="carouselExampleSlidesNav2" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">';
 	
 	// loop through the rows of data for the tab header
    while ( have_rows('carousel_slider') ) : the_row();
		
        $image        = get_sub_field('carousel_image');
        $size         = 'sliderSize';
        $title        = get_sub_field('carousel_title');
        $subtitle     = get_sub_field('carousel_subtitle');
        $button_text  = get_sub_field('carousel_button_text');
        $button_link  = get_sub_field('carousel_button_link');
        
	?>
	
     <div class="carousel-item <?php if($i == 1) echo 'active'; ?>"> 
      <img class="background-overlay d-block" src="<?php echo $image['sizes']['sliderSize']; ?>" alt="<?php echo $image['title']; ?>">
        <div class="carousel-caption d-none d-sm-block text-right mb-5">
            <div class="<?php 
                if($i == 1) echo 'text-left';
                if($i == 2) echo 'text-center';
                if($i == 3) echo 'text-right';
            ?>">
            <h1 class="display-3"><?php echo $title;?></h1>
            <p class="lead"><?php echo $subtitle;?></p>
            <a href="<?php echo $button_link; ?>" class="btn <?php 
                if($i == 1) echo 'btn-danger';
                if($i == 2) echo 'btn-primary';
                if($i == 3) echo 'btn-success';
            ?> btn-lg"><?php echo $button_text;?></a>
            </div>
        </div>
    </div>
	
	              
	<?php   $i++; // Increment the increment variable

	endwhile; //End the loop 
	
	echo '</div>
			 <a class="carousel-control-prev" href="#carouselExampleSlidesNav2" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleSlidesNav2" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
		</div>';

    else :

endif; ?>

<!-- HOME ICON SECTION -->

    <section id="home-icons" class="py-5">
        <div class="container">
            <div class="row">
            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-cog fa-3x mb-2"></i>
                <h3>Turning Gears</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laborum, maxime!</p>
            </div>
            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-cloud fa-3x mb-2"></i>
                <h3>Sending Data</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laborum, maxime!</p>
            </div>
            <div class="col-md-4 mb-4 text-center">
                <i class="fas fa-cart-plus fa-3x mb-2"></i>
                <h3>Making Money</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laborum, maxime!</p>
            </div>
            </div>
        </div>
    </section>

    <!-- HOME HEADING SECTION -->

    <section id="home-heading" class="p-5">
      <div class="dark-overlay">
        <div class="row">
          <div class="col">
            <div class="container pt-5">
              <h1>Are You Ready To Get Started?</h1>
              <p class="d-none d-md-block">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Distinctio doloremque saepe accusantium animi fugiat temporibus debitis laborum blanditiis, nostrum beatae.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- INFO SECTION -->

    <?php 
    
    $info_title       = get_field('info_title');
    $info_description = get_field('info_description');
    $info_image       = get_field('info_image');
    
    ?>

    <section id="info" class="py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-6 align-self-center">
            <h3><?php echo $info_title; ?></h3>
            <p><?php echo $info_description; ?></p>
            <a href="about.html" class="btn btn-outline-danger btn-lg">Learn More</a>
          </div>
          <div class="col-md-6">
            <img src="<?php echo $info_image; ?>" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </section>

     <!-- VIDEO PLAY -->

     <?php 
        $youtube_link = get_field('youtube_link')
     ?>

    <section id="video-play">
      <div class="dark-overlay">
        <div class="row">
          <div class="col">
            <div class="container p-5">
              <a href="<?php echo $youtube_link; ?>">
              <i class="fas fa-play fa-3x"></i></a>
              <h1>See What We Do</h1>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

     <!-- PHOTO GALLERY -->

    <section id="gallery" class="py-4">
      <div class="container">
        <h1 class="text-center">
          Photo Gallery
        </h1>
        <p class="text-center">Check out our photos</p>
      </div>
     </section>

    <?php $images = get_field('gallery_section'); ?> 

    <?php if($images): ?> 
      <section>
        <div class="container mb-3">
          <div class="row">
          <div class="gallery text-center"> 

          <?php foreach( $images as $image ): ?> 
            
            <a href="<?php echo $image['url']; ?>" target="_blank" class="thumbnail"> 
                <img class="m-2" src="<?php echo $image['sizes']['medium']; ?>" alt="<?php the_title(); ?>" width="350" height="300"/> 
            </a> 

          <?php endforeach; ?> 

            </div>
          </div>
        </div>
      </section>

    <?php endif; ?>

<?php get_footer(); ?>