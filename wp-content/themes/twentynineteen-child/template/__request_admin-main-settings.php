<?php

/*
 Template Name: Request - Main Settings
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/Objects/UserData.php' );

echo json_encode( $User_Data->get_main_settings() );
