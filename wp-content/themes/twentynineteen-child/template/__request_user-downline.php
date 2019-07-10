<?php

/*
 Template Name: Request - User Downline
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

echo json_encode( $User_Data->get_user_geneology_by_id( $_POST[ 'user_id' ], 'USERNAME' ) );
