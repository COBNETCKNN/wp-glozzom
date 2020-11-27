<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo('name');?></title>
    <?php 
    // WP hook for loading files
        wp_head() ?>
</head>
<body <?php body_class(); ?>>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
      <div class="container">
        <a href="<?php echo esc_url(site_url()); ?>" class="navbar-brand">Glozzom</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ml-auto">
            <li <?php if(is_front_page()) echo 'class="nav-item active"'  ?>>
              <a href="<?php echo esc_url(site_url()); ?>" class="nav-link">Home</a>
            </li>
            <li <?php if(is_page('about-us')) echo 'class="nav-item active"' ?>>
              <a href="<?php echo esc_url(site_url('/about-us'));?>" class="nav-link">About Us</a>
            </li>
            <li class="nav-item ">
              <a href="services.html" class="nav-link">Services</a>
            </li>
            <li class="nav-item ">
              <a href="blog.html" class="nav-link">Blog</a>
            </li>
            <li class="nav-item ">
              <a href="contact.html" class="nav-link">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
