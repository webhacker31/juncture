<?php

/*
 Template Name: Request - Update Main Settings
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserAction.php' );

echo json_encode( $User_Action->update_main_settings( $_POST[ 'data' ] ) );