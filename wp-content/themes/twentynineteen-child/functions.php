<?php

/**
 * Enqueue Styles
 */
add_action( 'wp_enqueue_scripts', '_enqueue_styles' );
function _enqueue_styles() {
 
    $parent_style = 'parent-style';
 
    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style ),
        wp_get_theme()->get('Version')
    );

}

/**
 * Enqueue Scripts
 */
add_action( 'wp_enqueue_scripts', '_enqueue_scripts' );
function _enqueue_scripts() {

    wp_enqueue_script( 'jquery-core', get_template_directory_uri() . '/js/jquery-3.3.1.min.js' );

}

/**
 * Hook Custom Styles to HEAD
 * CDN
 */
add_action( 'wp_head', '_head_hook_cdn' );
function _head_hook_cdn() {

    $style = '';

    // Bootstrap Core CSS
    $style .= '<link rel="stylesheet" id="bootstrap-core-css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">';

    // Fontawesome CSS
    $style .= '<link rel="stylesheet" id="fontawesome-core-css" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">';

    echo $style;

}

/**
 * Hook Custom Scripts to FOOTER
 * CDN
 */
add_action( 'wp_footer', '_footer_hood_cdn' );
function _footer_hood_cdn() {
    
    $script = '';

    // Bootstrap Popper
    $script .= '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>';

    // Bootstrap Core JS
    $script .= '<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>';

    echo $script;

}

?>