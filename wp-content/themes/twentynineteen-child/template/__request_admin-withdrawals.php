<?php

/*
 Template Name: Request - Admin Withdrawals
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/Objects/UserData.php' );

echo json_encode( $User_Data->get_users_withdrawal_status() );
