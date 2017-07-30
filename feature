<?php bloginfo('template_url'); ?>
<?php 
 
function register_styles() {
	wp_register_style('my-bootstrap', get_template_directory_uri() . 
        '/libs/bootstrap/bootstrap-grid-3.3.1.min.css');
    wp_enqueue_style('my-bootstrap');
 
    wp_register_style('font-awesome', get_template_directory_uri() . 
        '/libs/font-awesome-4.2.0/css/font-awesome.min.css');
    wp_enqueue_style('font-awesome');
 
    wp_register_style('style', get_template_directory_uri() . 
 		'/style.css');
    wp_enqueue_style('style'); 
 
}
 
add_action( 'wp_enqueue_scripts', 'register_styles' );
 
 
function load_my_script() {
  
    wp_deregister_script('jquery');
    wp_register_script('jquery', get_template_directory_uri() . 
 		'/libs/jquery/jquery-1.11.1.min.js');
    wp_enqueue_script('jquery');
 
    wp_register_script('animate-plugin', get_template_directory_uri() . 
 		'/libs/animate-plugin/jquery.waypoints.min.js', array ('jquery'), null, false);
    wp_enqueue_script('animate-plugin');
 
    wp_register_script('animate-plugin-pl', get_template_directory_uri() . 
 		'/libs/animate-plugin/animate-css.js', array ('jquery'), null, false);
 	wp_enqueue_script('animate-plugin-pl');
 
 	wp_register_script('headhesive_css', get_template_directory_uri() . 
 		'/libs/headhesive/headhesive.min.js', array ('jquery'), null, false);
    wp_enqueue_script('headhesive_css');
 
 	wp_register_script('headhesive_min', get_template_directory_uri() . 
 		'/libs/headhesive/head.js', array ('jquery'), null, false);
    wp_enqueue_script('headhesive_min');
 
 	wp_register_script('fancybox', get_template_directory_uri() . 
 		'/libs/fancybox/jquery.fancybox.pack.js', array ('jquery'), null, false);
    wp_enqueue_script('fancybox');
 
    wp_register_script('placeholder', get_template_directory_uri() . 
 		'/libs/placeholder/jquery.powerful-placeholder.min.js', array ('jquery'), null, false);
    wp_enqueue_script('placeholder');
 
 	wp_register_script('common_my', get_template_directory_uri() . 
 		'/libs/common/common.js', array ('jquery'), null, false);
    wp_enqueue_script('common_my');
	
    wp_register_script('es5-shim', get_template_directory_uri() . 
 		'/libs/html5shiv/es5-shim.min.js', array ('jquery'), null, false);
    wp_enqueue_script('es5-shim');
 
    wp_register_script('html5shiv', get_template_directory_uri() . 
 		'/libs/html5shiv/html5shiv.min.js', array ('jquery'), null, false);
    wp_enqueue_script('html5shiv');
 
    wp_register_script('html5shiv-printshiv', get_template_directory_uri() . 
 		'/libs/html5shiv/html5shiv-printshiv.min.js', array ('jquery'), null, false);
    wp_enqueue_script('html5shiv-printshiv');
 
    wp_register_script('respond.minie9', get_template_directory_uri() . 
 		'/libs/respond/respond.min.js', array ('jquery'), null, false);
    wp_enqueue_script('respond.minie9');
 
 	
}
 
add_action('wp_enqueue_scripts', 'load_my_script');
