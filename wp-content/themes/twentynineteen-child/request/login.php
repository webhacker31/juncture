<?php

/**
 * Login Response
 * Method: POST
 * 
 */

require_once '../../../../wp-load.php';

if ( isset( $_POST[ 'username' ] ) && isset( $_POST[ 'password' ] ) ) {

    $username = $_POST[ 'username' ];
    $password = $_POST[ 'password' ];

    $status = [];

    global $wpdb;

    $user_information = $wpdb->get_row( "SELECT * FROM `j_users_info` WHERE `user_info_id`='{$username}' OR `user_username`='{$username}' AND `user_password`='{$password}'" );

    if ($user_information !== NULL) {

        $url = 'http://localhost/juncture/wp-content/themes/twentynineteen-child/request/session_start.php';

        $fields = [
            'request_type'      => 'Session',
            'user_id'           => $user_information->user_info_id,
            'user_username'     => $user_information->user_username,
            'user_password'     => $user_information->user_password,
            'user_role'         => $user_information->user_role,
            'user_referral_id'  => $user_information->user_referral_id,
            'user_upline_id'    => $user_information->user_upline_id,
            'user_position'     => $user_information->user_position
        ];

        $fields_string = http_build_query($fields);

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, count($fields));
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 

        // Result
        echo curl_exec($ch);

    } else {

        $status = [
            'status' => 'failed',
            'message' => 'User not exist.'
        ];

    }

} else { // If direct access

    header('Location: /juncture/page-error/?error=direct_access');
    die();

}