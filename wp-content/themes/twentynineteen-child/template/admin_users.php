<?php

/*
 Template Name: Admin Users Page
 */

include_once './wp-content/themes/twentynineteen-child/Objects/UserData.php';

wp_head();

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id' ) );

if ( $user_role[0]->user_role == 'admin' ) {

	include_once( 'users/admin_users.php' );

} else {

	header( 'Location: http://localhost/juncture/' );
	die();

}

wp_footer(); ?>

<script src="/juncture/wp-content/themes/twentynineteen-child/js/user_datatable.js" type="text/javascript"></script>
