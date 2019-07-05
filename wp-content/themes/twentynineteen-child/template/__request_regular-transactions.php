<?php

/*
 Template Name: Request - Regular Transactions
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

echo json_encode( $User_Data->get_user_transaction_by_id( $_GET[ 'user_id' ] ) );
