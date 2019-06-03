<?php

/*
 Template Name: Request - Admin Delete User
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/Objects/UserAction.php' );

echo json_encode( $User_Action->delete_user( $_GET[ 'user_info_id' ] ) );
