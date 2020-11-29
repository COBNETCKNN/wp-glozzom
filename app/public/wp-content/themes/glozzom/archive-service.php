<?php get_header(); ?>

<!-- PAGE HEADER -->

    <header id="page-header" class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto text-center">
                    <h1>Our Services</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus, dolores.</p>
                </div>
            </div>
        </div>
    </header>

<!-- SERVICES CARDS -->

    <section id="services" class="py-5">
        <div class="container mb-4">
            <div class="row">

    <?php while(have_posts()){
        the_post(); ?>

    <?php 
    
    $service_name        = get_field('service_name');
    $service_cost        = get_field('service_cost');
    $service_description = get_field('service_description');
    $service_link        = get_field('service_link');
    $plan_duration       = get_field('plan_duration');

    ?>  
                  <div class="col-md-4 my-2">
                    <div class="card text-center">
                        <div class="card-header bg-dark text-white">
                            <h3><?php echo $service_name; ?></h3>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title"><?php echo '$' . $service_cost; ?></h4>
                            <p class="card-text"><?php echo $service_description; ?></p>

                            <?php
                            // repeater for features

                                // Check rows exists.
                                if( have_rows('service_features') ):
                                    ?>
                                    <ul class="list-group">
                                    <?php
                                    // Loop through rows.
                                    while( have_rows('service_features') ) : the_row(); ?>

                                         <li class="list-group-item">
                                            <i class="fas fa-check"></i> <?php echo get_sub_field('feature');?>
                                        </li>

                                    <?php endwhile; ?>

                                        </ul>

                                <?php endif; ?>

                                

                            <a href="<?php echo $service_link; ?>" class="btn btn-danger btn-block mt-2">Get It</a>
                        </div>
                        <div class="card-footer text-muted">
                            <?php echo $plan_duration; ?>
                        </div>
                    </div>
                </div>
<?php
    } ?>

        </div>
    </div>


<!-- FREQUENTLY ASKED QUESTIONS SECTION -->

<section id="faq" class="p-5 bg-dark text-white">
    <div class="container">
        <h1 class="text-center">Frequently Asked Questions</h1>
        <hr>

      <div class="container my-2">
        <div class="row">
            <div class="col text-center">

<?php 
// check if the repeater field has rows of data
if( have_rows('faq_repeater') ):
	$i = 1; // Set the increment variable
    
    
	echo '<div id="accordion">';
 	
 	// loop through the rows of data for the tab header
    while ( have_rows('faq_repeater') ) : the_row();
		
		$question  = get_sub_field('question');
		$answer    = get_sub_field('answer');

	?>
		
		<div class="card">
		    <div class="card-header" id="heading-<?php echo $i;?>">
                <h5 data-toggle="collapse" data-target="#collapse-<?php echo $i;?>" aria-expanded="true" aria-controls="collapse-<?php echo $i;?>">
		          <?php echo $question; ?>
		    </div>
		
		    <div id="collapse-<?php echo $i;?>" class="collapse" aria-labelledby="heading-<?php echo $i;?>" data-parent="#accordion">
		      <div class="card-body">
		        <?php echo $answer; ?>
		      </div>
		    </div>
		 </div>    
		
	<?php $i++; // Increment the increment variable
		
	endwhile; //End the loop 
	
	echo '</div>';

endif; ?>

          </div>
        </div>
    </div>
</section>




<?php get_footer(); ?>