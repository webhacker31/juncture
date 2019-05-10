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

    public function get_users_transactions() {

        $get_user_transaction = $this->wpdb->get_results( "SELECT * FROM j_users_transactions" );

        return $get_user_transaction;

    }

    public function get_users_withdrawal_status() {

        $get_user_withdrawal_status = $this->wpdb->get_results( "SELECT * FROM j_users_withdrawal_status" );

        return $get_user_withdrawal_status;

    }

    public function get_user_info_by_id( $user_id ) {

        $get_user_info_by_id = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id = '{$user_id}'" );

        return $get_user_info_by_id;

    }

    public function get_user_downline_by_id( $user_id ) {

        $user_queue = [];

        $get_user_downlines = $this->wpdb->get_results( "SELECT user_upline_id FROM j_users_info WHERE user_info_id = '{$user_id}'" );

        return $get_user_downlines;

    }

    public function get_users_in_stack() {

        
    }

}

$User_Data = new User_Data;
