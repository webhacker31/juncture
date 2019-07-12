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

    public function get_username_by_id( $user_id ) {

        $get_username_by_id = $this->wpdb->get_var( "SELECT user_username FROM j_users_info WHERE user_info_id='{$user_id}'" );

        return $get_username_by_id;
        
    }

    public function get_user_info_by_credentials( $username, $password ) {

        $get_user_info_by_credentials = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$username}' AND user_password='{$password}' OR user_username='{$username}' AND user_password='{$password}'" );

        return $get_user_info_by_credentials;

    }

    public function get_users_transactions() {

        $get_user_transaction = $this->wpdb->get_results( "SELECT * FROM j_users_transactions" );

        foreach ( $get_user_transaction as &$data ) {

            $data->user_info_id = $data->user_info_id . ' - ' . strtoupper( $this->get_username_by_id( $data->user_info_id ) );

        }

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
        
        foreach ( $get_user_earnings as &$data ) {

            $data->earning_pair_left = $data->earning_pair_left . ' - ' . strtoupper( $this->get_username_by_id( $data->earning_pair_left ) );
            $data->earning_pair_right = $data->earning_pair_right . ' - ' . strtoupper( $this->get_username_by_id( $data->earning_pair_right ) );

        }

        return $get_user_earnings;

    }

    public function get_user_downline_by_id( $user_id ) {

        $get_user_downline_by_id = $this->wpdb->get_results( "SELECT user_dl_left_id, user_dl_right_id FROM j_users_info WHERE user_info_id='{$user_id}'" );

        return $get_user_downline_by_id;

    }

    public function stack_geneology( $data_obj, $parent_user_id, &$available_counter ) {

        $stack_geneology = [];

        foreach ( $data_obj as $data_key ) {

            array_push( $stack_geneology, array( ( $data_key->user_dl_left_id == "" ) ? strval( ++$available_counter ) : $data_key->user_dl_left_id, $parent_user_id, ( $data_key->user_dl_left_id == "" ) ? "Available" :  $data_key->user_dl_left_id ) );
            array_push( $stack_geneology, array( ( $data_key->user_dl_right_id == "" ) ? strval( ++$available_counter ) : $data_key->user_dl_right_id, $parent_user_id, ( $data_key->user_dl_right_id == "" ) ? "Available" :  $data_key->user_dl_right_id ) );

        }

        return $stack_geneology;

    }

    public function get_user_geneology_by_id( $user_id, $return_type = '' ) {

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

        for( $index = 0; $index < count( $users_to_check ); $index++ ) {

            if( count( $user_downlines ) >= 21 ) break;

            if( $users_to_check[ $index ] != "Available" ) {

                $the_users_downline = $this->get_user_downline_by_id( $users_to_check[ $index ] );

                foreach ( $this->stack_geneology( $the_users_downline, $users_to_check[ $index ], $available_counter ) as $data_key ) {

                    array_push( $user_downlines, $data_key );

                }

                array_push( $users_to_check, ( $the_users_downline[0]->user_dl_left_id == "" ) ? "Available" : $the_users_downline[0]->user_dl_left_id );
                array_push( $users_to_check, ( $the_users_downline[0]->user_dl_right_id == "" ) ? "Available" : $the_users_downline[0]->user_dl_right_id );

            }

        }

        array_unshift( $user_downlines, array( $user_id, '', $user_id ) );

        switch( strtolower( $return_type ) ) {

            case "id":

                return $user_downlines;
                break;

            case "username":

                foreach ( $user_downlines as &$downline_group ) {

                    if ( $downline_group[2] != "Available" ) {
                    
                        $downline_group[2] = $this->get_username_by_id( $downline_group[2] );

                    }

                }

                return $user_downlines;
                break;
            
            default:
                
                return $user_downlines;
                break;

        }

    }

    public function is_user_pairing_exist( $user_id, $pairing_id ) {

        $is_user_pairing_exist = $this->wpdb->get_var( 'SELECT COUNT FROM j_users_earnings WHERE user_info_id="' . $user_id . '" AND earning_pair_left="' . $pairing_id . '" OR user_info_id="' . $user_id . '" AND earning_pair_right="' . $pairing_id . '"' );

        return $is_user_pairing_exist;

    }

    public function get_user_pairing_by_id( $main_user_id, $purpose = '' ) {

        $pairing_success = array();
        $user_left_right_downlines = array();

        $user_direct_downline = $this->get_user_downline_by_id( $main_user_id );

        foreach( $user_direct_downline[ 0 ] as $position => $user_id ) {

            if( $user_id != '' ) {

                $downline_position = ( $position == 'user_dl_left_id' ) ? 'left' : 'right' ;

                if( ! array_key_exists( $downline_position, $user_left_right_downlines ) ) {

                    $user_left_right_downlines[ $downline_position ] = array();

                }

                if( ! $this->is_user_pairing_exist( $main_user_id, $user_id ) ) {

                    array_push( $user_left_right_downlines[ $downline_position ], $user_id );

                }

                $user_geneology_data = $this->get_user_geneology_by_id( $user_id );

                for( $index = 1; $index < count( $user_geneology_data ); $index++ ) {

                    if( $user_geneology_data[ $index ][ 2 ] != "Available" ) {

                        $user_info = $this->get_user_info_by_id( $user_geneology_data[ $index ][ 2 ] );

                        if( ! $this->is_user_pairing_exist( $main_user_id, $user_geneology_data[ $index ][ 2 ] ) ) {

                            array_push( $user_left_right_downlines[ $downline_position ], $user_info[ 0 ]->user_info_id );

                        }

                    }

                }

            }

        for( $index = 0; $index < count( $user_left_right_downlines[ 'left' ] ); $index++ ) {

            if( $user_left_right_downlines[ 'right' ][ $index ] == null ) break;

            array_push( $pairing_success, array( $user_left_right_downlines[ 'left' ][ $index ], $user_left_right_downlines[ 'right' ][ $index ] ) );

        }

        if( $purpose == 'request_withdrawal' ) {

            return $pairing_success;

        } else {

            return $this->get_user_pairing_obj_format( $pairing_success );

        }

    }

    public function get_user_pairing_obj_format( $pairing_array_format ) {

        $pairing_to_obj = [];

        foreach ( $pairing_array_format as $pairing_group ) {

            array_push( $pairing_to_obj, [
                'earning_type' => 'Pairing',
                'earning_pair_left_id' => $pairing_group[0],
                'earning_pair_right_id' => $pairing_group[1],
                'earning_pair_left' => $pairing_group[0] . ' - ' . $this->get_username_by_id( $pairing_group[0] ),
                'earning_pair_right' => $pairing_group[1] . ' - ' . $this->get_username_by_id( $pairing_group[1] ),
                'earning_amount' => '500'
            ]);

        }

        return $pairing_to_obj;

    }

    public function get_main_settings() {

        $get_main_settings = $this->wpdb->get_results( "SELECT * FROM j_main_settings" );

        return $get_main_settings;

    }

}

$User_Data = new User_Data;
