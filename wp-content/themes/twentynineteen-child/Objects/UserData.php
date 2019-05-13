<?php

class User_Data {

    private $wpdb;

    public function __construct() {

        global $wpdb;
        $this->wpdb = $wpdb;

    }

    public function get_all_users() {

        $get_user_info = $this->wpdb->get_results( "SELECT * FROM j_users_info" );

        return $get_user_info;

    }

    public function get_user_info_by_id( $user_id ) {

        $get_user_info_by_id = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$user_id}'" );

        return $get_user_info_by_id;

    }

    public function get_user_info_by_credentials( $username, $password ) {

        $get_user_info_by_credentials = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$username}' OR user_username='{$username}' AND user_password='{$password}'" );

        return $get_user_info_by_credentials;

    }

    public function get_users_transactions() {

        $get_user_transaction = $this->wpdb->get_results( "SELECT * FROM j_users_transactions" );

        return $get_user_transaction;

    }

    public function get_user_transaction_by_id( $user_id ) {

        $get_user_transaction_by_id = $this->wpdb->get_results( "SELECT * FROM j_users_transactions WHERE user_info_id='{$user_id}'" );

        return $get_user_transaction_by_id;

    }

    public function get_users_withdrawal_status() {

        $get_user_withdrawal_status = $this->wpdb->get_results( "SELECT * FROM j_users_withdrawal_status" );

        return $get_user_withdrawal_status;

    }

    public function get_user_withdrawal_status_by_id( $user_id ) {

        $get_user_withdrawal_status_by_id = $this->wpdb->get_results( "SELECT * FROM j_users_withdrawal_status WHERE user_info_id='{$user_id}'" );

        return $get_user_withdrawal_status_by_id;

    }

    public function get_user_earnings( $user_id ) {

        $get_user_earnings = $this->wpdb->get_results( "SELECT * FROM j_users_earnings WHERE user_info_id='{$user_id}'" );

        return $get_user_earnings;

    }

    public function get_user_downline_by_id( $user_id ) {

        $get_user_downline_by_id = $this->wpdb->get_results( "SELECT user_dl_left_id, user_dl_right_id FROM j_users_info WHERE user_info_id='{$user_id}'" );

        return $get_user_downline_by_id;

    }

    public function get_users_in_stack() {

        
    }

}

$User_Data = new User_Data;
