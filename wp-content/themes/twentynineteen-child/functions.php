<?php

/**
 * Enqueue Styles
 */
add_action( 'wp_enqueue_scripts', '_enqueue_styles', 15 );
function _enqueue_styles() {
 
    $parent_style = 'parent-style';
 
    // Core Parent CSS
    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );

    // CSS Libraries
    wp_enqueue_style( 'fontawesome-core-css', 'https://use.fontawesome.com/releases/v5.8.1/css/all.css' );
    wp_enqueue_style( 'bootstrap-core-css', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' );
    wp_enqueue_style( 'material-core-css', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.6/css/mdb.min.css' );

    // Core CSS
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri() . '/style.css', array( $parent_style ), wp_get_theme()->get('Version') );

}

/**
 * Enqueue Scripts
 */
add_action( 'wp_enqueue_scripts', '_enqueue_scripts', 15 );
function _enqueue_scripts() {

    wp_enqueue_script( 'jquery-core', get_template_directory_uri() . '/js/jquery-3.3.1.min.js' );
    wp_enqueue_script( 'bootstrap-popper', 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js' );
    wp_enqueue_script( 'bootstrap-core-js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' );
    wp_enqueue_script( 'material-core-js', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.6/js/mdb.min.js' );

}

?>