<?php

/*
 Template Name: Users Page
 */

include_once './wp-content/themes/twentynineteen-child/Objects/UserData.php';

$user_id = $_GET[ 'user_id' ];

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id_' . $user_id ) );

if ( strtoupper( $user_role[0]->user_role ) == 'ADMIN' ) {

	wp_head();

	include_once( 'users/admin_users.php' );

	wp_footer();

} else {

	header( 'Location: http://localhost/juncture/' );
	die();

} ?>

<script src="/juncture/wp-content/themes/twentynineteen-child/js/user_datatable.js" type="text/javascript"></script>
