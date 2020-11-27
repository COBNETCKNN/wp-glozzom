<?php  


function glozzom_files() {

    // enqueing javascript
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script("jquery");
    wp_enqueue_script('fontawesomeIcons', 'https://kit.fontawesome.com/24bc428ad4.js', array(), 1.0, true);
    wp_enqueue_script('bootstrapJS', 'https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js', array(), 1.0, true);
    wp_enqueue_script('slickJS', get_stylesheet_directory_uri() . '/slick/slick/slick.min.js', array(), 1.0, true);
    wp_enqueue_script('slickLightboxJS', get_stylesheet_directory_uri() . '/slick-lightbox/dist/slick-lightbox.min.js', array(), 1.0, true);


    //enqueing css
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');
    wp_enqueue_style('slickCSS', get_template_directory_uri() . '/slick/slick/slick.css');
    wp_enqueue_style('slickLightboxJS', get_template_directory_uri() . '/slick-lightbox/dist/slick-lightbox.css');

}

add_action('wp_enqueue_scripts', 'glozzom_files');


function glozzom_features() {
    add_theme_support('title-tag'); 
    add_theme_support('post-thumbnails'); 
    // image sizes
    add_image_size('sliderSize', 1900, 450, true);
}

add_action('after_setup_theme', 'glozzom_features');


// REMOVING EDITOR FROM HOME PAGE
function remove_content_editor() {
    if((int) get_option('page_on_front')==get_the_ID()) {
        remove_post_type_support('page', 'editor');
    }
}

add_action('admin_head', 'remove_content_editor');


