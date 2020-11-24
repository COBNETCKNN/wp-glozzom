<?php 
// hook onto which plugins load their JS in footer
    wp_footer(); ?>


<footer id="main-footer" class="text-center p-4 bg-dark text-light">
    <div class="container">
    <div class="row">
        <div class="col">
        <h6>Copyright &copy; <span id="year"></span> <?php bloginfo('name');?></h6>
        </div>
    </div>
    </div>
</footer>

</body>
</html>