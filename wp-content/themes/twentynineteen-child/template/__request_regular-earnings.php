<?php

/*
 Template Name: Request - Regular Earnings
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

echo json_encode( $User_Data->get_user_earnings( $_GET[ 'user_id' ] ) );
