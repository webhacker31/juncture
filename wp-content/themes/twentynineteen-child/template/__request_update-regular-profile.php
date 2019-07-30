<?php

/*
 Template Name: Request - Update Regular Profile
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserAction.php' );

echo json_encode( $User_Action->update_regular_profile( $_POST[ 'data' ] ) );
