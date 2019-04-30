<?php

/*
 Template Name: Dashboard
 */

wp_head();

if ( $_GET['user_role'] === 'Admin' ) {

    require_once( 'users/admin.php' );

} else if ( $_GET['user_role'] === 'Regular' ) {

    require_once( 'users/regular.php' );

}

wp_footer();

?>
