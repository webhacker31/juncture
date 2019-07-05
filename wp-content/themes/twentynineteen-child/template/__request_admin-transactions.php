<?php

/*
 Template Name: Request - Admin Transactions
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

echo json_encode( $User_Data->get_users_transactions() );
