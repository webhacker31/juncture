<?php

require_once '../../../../wp-load.php';

$status = [];

if ($_POST['request_type'] === 'Session') {

    delete_transient( 'user_id' ); // Just making sure ;)

    $is_set_transient_success = set_transient( 'user_id', $_POST['user_id'] );

    if ($is_set_transient_success) {

        $status = [
            'status' => 'success',
            'message' => 'Session successfully set.'
        ];

    } else {

        $status = [
            'status' => 'failed',
            'message' => 'Session failed to set.'
        ];

    }

    echo json_encode($status);

}

?>