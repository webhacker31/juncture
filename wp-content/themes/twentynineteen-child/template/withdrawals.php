<?php

/*
 Template Name: Withdrawals Page
 */

include_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

$user_id = $_GET[ 'user_id' ];

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id_' . $user_id ) );

if ( strtoupper( $user_role[0]->user_role ) == 'ADMIN' ) {

	wp_head();

	include_once( 'users/admin_withdrawals.php' );

	wp_footer();

} else if ( strtoupper( $user_role[0]->user_role ) == 'DISTRIBUTOR' ) {

	wp_head();

	include_once( 'users/regular_withdrawals.php' );

	wp_footer();

} else {

	header( 'Location: ' . esc_url( home_url( '/' ) ) );
	die();

} ?>

<script type="text/javascript">var $user_id = "<?php echo $user_id; ?>"; var $home_url = "<?php echo esc_url( home_url() ); ?>";</script>
<script src="<?php echo esc_url( home_url() ) ?>/wp-content/themes/twentynineteen-child/js/withdrawal_datatable.js" type="text/javascript"></script>
