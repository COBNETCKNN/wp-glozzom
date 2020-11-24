<?php  


function glozzom_files() {

    // enqueing javascript
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);

    //enqueing css
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');

}

add_action('wp_enqueue_scripts', 'glozzom_files');
