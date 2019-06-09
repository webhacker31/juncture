<?php

/*
 Template Name: Dashboard
 */

include_once( './wp-content/themes/twentynineteen-child/Objects/UserData.php' );

$user_id = $_GET[ 'user_id' ];

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id_' . $user_id ) );
$user_username = $User_Data->get_username_by_id( get_transient( 'user_id_' . $user_id ) );

if ( strtoupper( $user_role[0]->user_role ) == 'ADMIN' ) {

	wp_head();

	include_once( 'users/admin.php' );

	wp_footer();

} else if ( strtoupper( $user_role[0]->user_role ) == 'REGULAR' ) {

	wp_head();

	include_once( 'users/regular.php' );

	wp_footer();

} else {

	header( 'Location: ' . esc_url( home_url( '/' ) ) );
	die();

} ?>

<script type="text/javascript">var $user_id = "<?php echo $user_id; ?>"; var $home_url = "<?php echo esc_url( home_url() ); ?>";</script>