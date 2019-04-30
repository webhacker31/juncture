<?php

class User_Data {

    private $wpdb;

    public function __construct() {

        global $wpdb;
        $this->wpdb = $wpdb;

    }

    public function get_user_downline_by_id( $user_id ) {

        $user_queue = [];

        $get_user_downlines = $this->wpdb->get_results( "SELECT user_upline_id FROM j_users_info WHERE ID = '{$user_id}'" );

        return $get_user_downlines;

    }

    public function get_users_in_stack() {

        
    }

}

$User_Data = new User_Data;
