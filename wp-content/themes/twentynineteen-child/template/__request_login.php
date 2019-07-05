<?php

/*
 Template Name: Request - Login
 */

require_once( './wp-load.php' );
require_once( './wp-content/themes/twentynineteen-child/obj/UserData.php' );

if ( isset( $_POST[ 'username' ] ) && isset( $_POST[ 'password' ] ) ) {

    $username = $_POST[ 'username' ];
    $password = $_POST[ 'password' ];

    $status = [];

    $user_data_info = $User_Data->get_user_info_by_credentials( $username, $password );

    if ( $user_data_info != NULL ) {

        $url = esc_url( home_url() ) . '/request/session/';

        $fields = [
            'request_type'      => 'Session',
            'user_id'           => $user_data_info[0]->user_info_id,
            'user_username'     => $user_data_info[0]->user_username,
            'user_password'     => $user_data_info[0]->user_password,
            'user_role'         => $user_data_info[0]->user_role,
            'user_upline_id'    => $user_data_info[0]->user_upline_id,
            'user_position'     => $user_data_info[0]->user_position
        ];

        $fields_string = http_build_query( $fields );

        $ch = curl_init();

        curl_setopt( $ch, CURLOPT_URL, $url );
        curl_setopt( $ch, CURLOPT_POST, count( $fields ) );
        curl_setopt( $ch, CURLOPT_POSTFIELDS, $fields_string );
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true ); 

        echo curl_exec( $ch );

    } else {

        $status = [
            'status' => 'Failed',
            'message' => 'User not exist.'
        ];

    }

} else {

    header('Location: ' . esc_url( home_url() ) . '/page-error/?error=direct_access');
    die();

}
