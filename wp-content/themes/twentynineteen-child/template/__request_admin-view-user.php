<?php

/*
 Template Name: Request - Admin View Profile
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

echo json_encode( $User_Data->get_user_info_by_id( $_GET[ 'user_id' ] ) );
