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
    wp_enqueue_style( 'datatable-core-css', 'https://cdn.datatables.net/1.10.11/css/jquery.dataTables.css' );
    wp_enqueue_style( 'datatable-buttons-css', 'https://cdn.datatables.net/buttons/1.1.2/css/buttons.dataTables.css' );
    wp_enqueue_style( 'datatable-select-css', 'https://cdn.datatables.net/select/1.1.2/css/select.dataTables.css' );
    wp_enqueue_style( 'datatable-responsive-css', 'http://cdn.datatables.net/responsive/2.0.2/css/responsive.dataTables.css' );

    // Core CSS
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri() . '/style.css', array( $parent_style ), wp_get_theme()->get('Version') );

}

/**
 * Enqueue Scripts
 */
add_action( 'wp_enqueue_scripts', '_enqueue_scripts', 15 );
function _enqueue_scripts() {

    wp_enqueue_script( 'jquery-core', get_stylesheet_directory_uri() . '/js/jquery-3.3.1.min.js', array(), false, true );
    wp_enqueue_script( 'bootstrap-popper', 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js', array(), false, true );
    wp_enqueue_script( 'bootstrap-core-js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js', array(), false, true );
    wp_enqueue_script( 'material-core-js', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.6/js/mdb.min.js', array(), false, true );
    wp_enqueue_script( 'datatable-core-js', 'https://cdn.datatables.net/1.10.11/js/jquery.dataTables.js', array(), false, true );
    wp_enqueue_script( 'datatable-buttons-js', 'https://cdn.datatables.net/buttons/1.1.2/js/dataTables.buttons.js', array(), false, true );
    wp_enqueue_script( 'datatable-select-js', 'https://cdn.datatables.net/select/1.1.2/js/dataTables.select.js', array(), false, true );
    wp_enqueue_script( 'datatable-responsive-js', 'http://cdn.datatables.net/responsive/2.0.2/js/dataTables.responsive.js', array(), false, true );
    wp_enqueue_script( 'datatable-js', get_stylesheet_directory_uri() . '/js/data-table-editor.js', array(), false, true );
    wp_enqueue_script( 'google-chart-core-js', 'https://www.gstatic.com/charts/loader.js', array(), false, true );
    wp_enqueue_script( 'custom-core-js', get_stylesheet_directory_uri() . '/js/init.js', array(), false, true );

}

?>
