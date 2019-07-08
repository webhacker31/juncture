<?php

/*
 Template Name: Request - Regular Pairing
 */

// require_once( './wp-load.php' );
// require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

// echo json_encode( $User_Data->get_user_pairing_by_id( $_GET[ 'user_id' ], $_GET[ 'purpose' ] ) );

require_once( '../../../../wp-load.php' );
require_once( '../obj/UserData.php' );

echo json_encode( $User_Data->get_user_pairing_by_id( '000003' ) );
