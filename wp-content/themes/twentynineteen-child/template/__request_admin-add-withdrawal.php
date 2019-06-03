<?php

/*
 Template Name: Request - Admin Add Withdrawal
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/Objects/UserAction.php' );

echo json_encode( $User_Action->add_withdrawal_request( $_GET[ 'user_id' ], $_GET[ 'pairing_data' ] ) );
