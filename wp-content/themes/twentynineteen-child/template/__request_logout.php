<?php

/*
 Template Name: Request - Logout
 */

require_once( './wp-load.php' );

delete_transient( 'user_id_' . $_POST[ 'user_id' ] );

echo json_encode( [ 'status' => 'success', 'message' => 'Logout Successful.' ] );
