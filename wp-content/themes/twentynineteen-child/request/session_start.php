<?php

$status = [];

if ($_POST['request_type'] === 'Session') {

    session_start();

    unset($_SESSION['user_information']);

    $_SESSION['user_information'] = [
        'user_id'           => $_POST['user_id'],
        'user_username'     => $_POST['user_username'],
        'user_password'     => $_POST['user_password'],
        'user_role'         => $_POST['user_role'],
        'user_referral_id'  => $_POST['user_referral_id'],
        'user_upline_id'    => $_POST['user_upline_id'],
        'user_position'     => $_POST['user_position']
    ];

    if (isset($_SESSION['user_information']) && !empty($_SESSION['user_information'])) {

        $status = [
            'status' => 'success',
            'message' => 'Session successfully set.'
        ];

    } else {

        $status = [
            'status' => 'failed',
            'message' => 'Session failure to set.'
        ];

    }

    echo json_encode($status);

}

?>