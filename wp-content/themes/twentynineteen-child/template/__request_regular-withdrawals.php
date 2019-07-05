<?php

/*
 Template Name: Request - Regular Withdrawals
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

echo json_encode( $User_Data->get_user_withdrawal_status_by_id( $_GET[ 'user_id' ] ) );
