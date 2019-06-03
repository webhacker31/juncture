<?php

/*
 Template Name: Request - Session
 */

require_once( './wp-load.php' );

$status = [];

if ( $_POST[ 'request_type' ] == 'Session' ) {

    delete_transient( 'user_id_' . $_POST[ 'user_id' ] );

    $is_set_transient_success = set_transient( 'user_id_' . $_POST[ 'user_id' ], $_POST[ 'user_id' ] );

    if ( $is_set_transient_success ) {

        $status = [
            'status' => 'Success',
            'message' => 'Session successfully set.',
            'user_id' => $_POST[ 'user_id' ]
        ];

    } else {

        $status = [
            'status' => 'Failed',
            'message' => 'Session failed to set.'
        ];

    }

    echo json_encode( $status );

} else {

    $status = [
        'status' => 'Failed',
        'message' => 'Session failed to set.'
    ];

    echo json_encode( $status );

}

?>
