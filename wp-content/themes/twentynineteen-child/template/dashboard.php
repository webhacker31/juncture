<?php

/*
 Template Name: Dashboard
 */

include_once './wp-content/themes/twentynineteen-child/Objects/UserData.php';

$user_id = $_GET[ 'user_id' ];

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id_' . $user_id ) );

wp_head();

if ( $user_role[0]->user_role == 'admin' ) {

	include_once( 'users/admin.php' );

} else if ( $user_role[0]->user_role == 'regular' ) {

	include_once( 'users/regular.php' );

} else {

	header( 'Location: http://localhost/juncture/' );
	die();

}

wp_footer();

?>
