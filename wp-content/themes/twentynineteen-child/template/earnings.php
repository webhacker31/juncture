<?php

/*
 Template Name: Earnings Page
 */

include_once './wp-content/themes/twentynineteen-child/Objects/UserData.php';

$user_id = $_GET[ 'user_id' ];

$user_role = $User_Data->get_user_info_by_id( get_transient( 'user_id_' . $user_id ) );

wp_head();

if ( $user_role[0]->user_role == 'regular' ) {

	include_once( 'users/regular_earnings.php' );

} else {

	header( 'Location: http://localhost/juncture/' );
	die();

}

wp_footer(); ?>

<script type="text/javascript">var $user_id = "<?php echo $user_id; ?>"</script>
<script src="/juncture/wp-content/themes/twentynineteen-child/js/earning_datatable.js" type="text/javascript"></script>
