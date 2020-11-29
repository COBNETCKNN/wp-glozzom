<?php  


// REGISTRATING CUSTOM POST TYPES FOR OUR THEME

function glozzom_post_types() {

// services custom post type
register_post_type('service', array(
    'public' => true,
    'labels' => array(
        'name' => 'Service',
        'add_new_item' => 'Add New Service',
        'edit_item' => 'Edit Service',
        'all_items' => 'All Services',
        'singular_name' => 'Service',
    ),
    'has_archive' => true,
    'rewrite' => array('slug' => 'services'),
    'menu_icon' => 'dashicons-admin-tools',
));


}

add_action('init', 'glozzom_post_types');