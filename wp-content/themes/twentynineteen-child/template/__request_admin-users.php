<?php

/*
 Template Name: Request - Admin Users
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/Objects/UserData.php' );

echo json_encode( $User_Data->get_all_users() );
