<?php

require_once( '../../../../wp-load.php' );
include_once( '../obj/UserAction.php' );

$user_data_info = [
    'user_info_id'     => $_GET[ 'user_info_id' ],
    'user_username'     => preg_replace( '/\s+/', '', strtoupper( $_GET[ 'user_username' ] ) ),
    'user_password'     => preg_replace( '/\s+/', '', $_GET[ 'user_password' ] ),
    'user_role'         => preg_replace( '/\s+/', '', strtoupper( $_GET[ 'user_role' ] ) ),
    'user_upline_id'    => preg_replace( '/\s+/', '', $_GET[ 'user_upline_id' ] )
];

echo json_encode( $User_Action->update_user( $user_data_info ) );
