<?php

require_once( '../../../../wp-load.php' );
include_once( '../Objects/UserAction.php' );

$withdrawal_status_info = [
    'withdrawal_id'     => $_GET[ 'withdrawal_id' ],
    'withdrawal_status'     => preg_replace( '/\s+/', '', strtoupper( $_GET[ 'withdrawal_status' ] ) ),
];

echo json_encode( $User_Action->update_withdrawal_status( $withdrawal_status_info ) );
