<?php

/*
 Template Name: Dashboard
 */

include_once './wp-content/themes/twentynineteen-child/Objects/UserData.php';

wp_head();

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id' ) );

if ( $user_role[0]->user_role == 'admin' ) {

	include_once( 'users/admin.php' );

} else if ( $user_role[0]->user_role == 'regular' ) {

	include_once( 'users/regular.php' );

}

wp_footer();

?>
