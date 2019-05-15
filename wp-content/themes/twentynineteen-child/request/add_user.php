<?php

require_once( '../../../../wp-load.php' );
include_once( '../Objects/UserAction.php' );

$user_data_info = [
    'user_username'     => preg_replace( '/\s+/', '', strtoupper( $_POST[ 'user_username' ] ) ),
    'user_password'     => preg_replace( '/\s+/', '', $_POST[ 'user_password' ] ),
    'user_role'         => preg_replace( '/\s+/', '', strtoupper( $_POST[ 'user_role' ] ) ),
    'user_referral_id'  => preg_replace( '/\s+/', '', $_POST[ 'user_referral_id' ] ),
    'user_upline_id'    => preg_replace( '/\s+/', '', $_POST[ 'user_upline_id' ] )
];

echo json_encode( $User_Action->add_user( $user_data_info ) );
