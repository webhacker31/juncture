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

    // public function get_user_earnings( $user_id ) {

    //     $get_user_earnings = $this->wpdb->get_results( "SELECT * FROM j_users_earnings WHERE user_info_id='{$user_id}'" );

    //     return $get_user_earnings;

    // }

    public function get_user_downline_by_id( $user_id ) {

        $get_user_downline_by_id = $this->wpdb->get_results( "SELECT user_dl_left_id, user_dl_right_id FROM j_users_info WHERE user_info_id='{$user_id}'" );

        return $get_user_downline_by_id;

    }

    public function stack_geneology( $data_obj, $parent_user_id, &$available_counter ) {

        $stack_geneology = [];

        foreach ( $data_obj as $data_key ) {
            
            array_push( $stack_geneology, array( ( $data_key->user_dl_left_id == "" ) ? strval( ++$available_counter ) : $data_key->user_dl_left_id, $parent_user_id, ( $data_key->user_dl_left_id == "" ) ? "Available" : $data_key->user_dl_left_id ) );
            array_push( $stack_geneology, array( ( $data_key->user_dl_right_id == "" ) ? strval( ++$available_counter ) : $data_key->user_dl_right_id, $parent_user_id, ( $data_key->user_dl_right_id == "" ) ? "Available" : $data_key->user_dl_right_id ) );

        }

        return $stack_geneology;

    }

    public function get_user_geneology_by_id( $user_id ) {

        $user_downlines = [];
        $users_to_check = [];
        $counter = 0;
        $available_counter = 0;

        $main_user_downline = $this->get_user_downline_by_id( $user_id );

        foreach ( $this->stack_geneology( $main_user_downline, $user_id, $available_counter ) as $data_key ) {
                
            array_push( $user_downlines, $data_key );

        }

        array_push( $users_to_check, ( $main_user_downline[0]->user_dl_left_id == "" ) ? "Available" : $main_user_downline[0]->user_dl_left_id );
        array_push( $users_to_check, ( $main_user_downline[0]->user_dl_right_id == "" ) ? "Available" : $main_user_downline[0]->user_dl_right_id );

        for ( $index = 0; $index < count( $users_to_check ) - 1; $index++ ) { 

            if ( $users_to_check[ $index ] != "Available" ) {

                $the_users_downline = $this->get_user_downline_by_id( $users_to_check[ $index ] );

                foreach ( $this->stack_geneology( $the_users_downline, $users_to_check[ $index ], $available_counter ) as $data_key ) {
                
                    array_push( $user_downlines, $data_key );
                
                }

                array_push( $users_to_check, ( $the_users_downline[0]->user_dl_left_id == "" ) ? "Available" : $the_users_downline[0]->user_dl_left_id );
                array_push( $users_to_check, ( $the_users_downline[0]->user_dl_right_id == "" ) ? "Available" : $the_users_downline[0]->user_dl_right_id );

            }

        }

        array_unshift( $user_downlines, array( $user_id, '', $user_id ) );

        return $user_downlines;

    }

    public function get_user_pairing_by_id( $user_id ) {

        // return $this->get_user_geneology_by_id( $user_id );

        $temp_pairing_stack = [];
        $pairing_check = [];
        $pairing_success = [];
        $data_counter = 2;

        $user_geneology_data = $this->get_user_geneology_by_id( $user_id );

        // return count( $user_geneology_data );

        for ( $index = 1; $index < count( $user_geneology_data ); ) {

            if ( $index <= $data_counter ) {

                array_push( $temp_pairing_stack, $user_geneology_data[ $index ][2] );

                var_dump( $temp_pairing_stack );

                $index++;

            } else {

                array_push( $pairing_check, $temp_pairing_stack );

                $temp_pairing_stack = [];
                $data_counter = $data_counter * 2;

            }

        }

        // return $pairing_check;

        // for ( $index = 1; $index < count( $user_geneology_data ); ) {

        //     if ( $index <= $data_counter / 2 ) {

        //         array_push( $pairing_check, $user_geneology_data[ $index ] );

        //         $index++;

        //     } else {

        //         for ( $index = 0; $index < count( $pairing_check ) ; $i++) {



        //         }

        //         foreach ( $pairing_check as $user_id ) {

        //             $is_pairing_exist = $this->wpdb->get_var( "SELECT COUNT(*) WHERE earning_user_left_id='{ $user_id }' OR earning_user_right_id='{ $user_id }'" );

        //             if ( $is_pairing_exist ) {


        //             }
        //         }

        //     }

        // }

    }

}

$User_Data = new User_Data;
