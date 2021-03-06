<?php

class User_Action {

    private $wpdb;

    public function __construct() {

        global $wpdb;
        $this->wpdb = $wpdb;

    }

    public function generateRandomString( $length = 10 ) {

        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen( $characters );
        $randomString = '';

        for ( $i = 0; $i < $length; $i++ ) {
            $randomString .= $characters[ rand( 0, $charactersLength - 1 ) ];
        }

        return $randomString;

    }

    public function is_upline_id_exist( $user_upline_id ) {

        $is_upline_id_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users WHERE user_id='{$user_upline_id}'" );

        return $is_upline_id_exist;

    }
    
    public function is_position_available_to_upline( $user_upline_id, $user_position ) {

        $is_position_available_to_upline = $this->wpdb->get_var( "SELECT {$user_position} FROM j_users_info WHERE user_info_id='{$user_upline_id}'" );

        if ( $is_position_available_to_upline == '' ) {

            return true;

        } else {

            return false;

        }

    }

    public function username_limit_check( $user_username ) {

        $is_username_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users_info WHERE user_username='{$user_username}'" );

        return $is_username_exist;

    }

    public function user_position_converter( $position, $revert = false ) {
        
        $position = $position;

        switch( $revert ) {

            case true:
                switch( $position ) {

                    case "user_dl_left_id":
                        $position = "LEFT";
                        break;
                    
                    case "user_dl_right_id":
                        $position = "RIGHT";
                        break;
        
                }

                break;
            
            case false:
                switch( $position ) {
            
                    case "LEFT":
                        $position = "user_dl_left_id";
                        break;
                    
                    case "RIGHT":
                        $position = "user_dl_right_id";
                        break;
        
                }

                break;

        }

        return $position;

    }

    // public function is_

    public function add_user( $user_data ) {

        $return_failed_msg = [
            'user_info_id' => '',
            'user_username' => '',
            'user_password' => '',
            'user_role' => '',
            'user_upline_id' => '',
            'user_position' => '',
            'user_authentication_code' => '',
            'status' => 'failed',
            'message' => ""
        ];

        if ( $this->username_limit_check( $user_data[ "user_username" ] ) <= 7 ) {

            if ( $this->is_upline_id_exist( $user_data[ "user_upline_id" ] ) ) {

                if ( $this->is_position_available_to_upline( $user_data[ 'user_upline_id' ], $this->user_position_converter( $user_data[ 'user_position' ] ) ) ) {

                    $this->wpdb->query( "INSERT INTO j_users (user_id) VALUES (NULL)" );

                    $user_last_id = $this->wpdb->get_var( "SELECT user_id FROM j_users ORDER BY user_id DESC LIMIT 1" );

                    $this->wpdb->insert(
                        'j_users_info',
                        array(
                            'user_info_id'              => $user_last_id,
                            'user_username'             => $user_data[ 'user_username' ],
                            'user_password'             => $user_data[ 'user_password' ],
                            'user_role'                 => $user_data[ 'user_role' ],
                            'user_upline_id'            => $user_data[ 'user_upline_id' ],
                            'user_position'             => $this->user_position_converter( $user_data[ 'user_position' ], true ),
                            'user_authentication_code'  => $this->generateRandomString()
                            )
                    );

                    $this->wpdb->update( 
                        'j_users_info', 
                        array( 
                            $this->user_position_converter( $user_data[ 'user_position' ] ) => $user_last_id
                        ), 
                        array( 'user_info_id' => $user_data[ 'user_upline_id' ] )
                    );

                    $last_inserted_user = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$user_last_id}'" );

                    return [
                        'user_info_id' => $last_inserted_user[0]->user_info_id,
                        'user_username' => $last_inserted_user[0]->user_username,
                        'user_password' => $last_inserted_user[0]->user_password,
                        'user_role' => $last_inserted_user[0]->user_role,
                        'user_upline_id' => $last_inserted_user[0]->user_upline_id,
                        'user_position' => $last_inserted_user[0]->user_position,
                        'user_authentication_code' => $last_inserted_user[0]->user_authentication_code,
                        'status' => 'success',
                        'message' => 'User successfully registered.'
                    ];

                } else {

                    $return_failed_msg['message'] = "Position is not available.";
        
                    return $return_failed_msg;

                }

            } else {

                $return_failed_msg['message'] = "Upline ID doesn't exist.";
    
                return $return_failed_msg;

            }

        } else {

            $return_failed_msg['message'] = 'Username exceeds the limit.';

            return $return_failed_msg;

        }

    }

    public function is_user_has_downline( $user_id ) {

        $is_user_has_downline = $this->wpdb->get_var( "SELECT user_dl_left_id, user_dl_right_id FROM j_users_info WHERE user_info_id='{$user_id}'" );

        if ( $is_user_has_downline == '' ) {

            return true;

        } else {

            return false;

        }

    }

    public function update_user( $user_data ) {

        $this->wpdb->update( 
            'j_users_info', 
            array( 
                'user_username'     => $user_data[ 'user_username' ],
                'user_password'     => $user_data[ 'user_password' ],
                'user_role'         => $user_data[ 'user_role' ],
                'user_upline_id'    => $user_data[ 'user_upline_id' ]
            ), 
            array( 'user_info_id' => $user_data[ 'user_info_id' ] )
        );

        $last_updated_user = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$user_data[ 'user_info_id' ]}'" );

        return [
            'user_info_id' => $last_updated_user[0]->user_info_id,
            'user_username' => $last_updated_user[0]->user_username,
            'user_password' => $last_updated_user[0]->user_password,
            'user_role' => $last_updated_user[0]->user_role,
            'user_upline_id' => $last_updated_user[0]->user_upline_id,
            'user_position' => $last_updated_user[0]->user_position,
            'user_authentication_code' => $last_updated_user[0]->user_authentication_code,
        ];

    }

    public function add_withdrawal_request( $user_id, $pairing_data ) {

        if ( empty( $pairing_data ) ) {

            return [
                'status' => 'Failed',
                'message' => 'Withdrawal cannot be process.'
            ];

        }

        $tax = $this->wpdb->get_var( "SELECT set_value FROM j_main_settings WHERE set_name='tax_fee'" );
        $processing_fee = $this->wpdb->get_var( "SELECT set_value FROM j_main_settings WHERE set_name='processing_fee'" );
        $travel_incentive = $this->wpdb->get_var( "SELECT set_value FROM j_main_settings WHERE set_name='travel_incentive'" );
        $pairing_bonus_amount = $this->wpdb->get_var( "SELECT set_value FROM j_main_settings WHERE set_name='pairing_bonus'" );

        $total_withdrawal_amount = count( $pairing_data ) * ( $pairing_bonus_amount - ( ( ( $tax / 100 ) * 100 ) + $travel_incentive + $processing_fee) );
        $min_withdrawal_amount = 500;

        if ( $total_withdrawal_amount > $min_withdrawal_amount ) {

            $this->wpdb->insert(
                'j_users_withdrawal_status',
                array(
                    'user_info_id'          => $user_id,
                    'withdrawal_amount'     => $total_withdrawal_amount,
                    'withdrawal_status'     => 'Pending'
                    )
                );

            $withdrawal_last_id = $this->wpdb->get_var( "SELECT withdrawal_id FROM j_users_withdrawal_status ORDER BY withdrawal_id DESC LIMIT 1" );

            foreach ( $pairing_data as $user_ids ) {

                $this->wpdb->insert(
                    'j_users_earnings',
                    array(
                        'withdrawal_id'     => $withdrawal_last_id,
                        'user_info_id'      => $user_id,
                        'earning_pair_left' => $user_ids[ 0 ],
                        'earning_pair_right' => $user_ids[ 1 ],
                        'earning_type'      => 'Pairing',
                        'earning_amount'     => '500'
                        )
                    );

            }

            return [
                'status' => 'Success',
                'message' => 'Withdrawal Request has now been processed.'
            ];

        } else {

            return [
                'status' => 'Failed',
                'message' => 'Withdrawal amount not reached with the minimum withdrawal amount of 500.'
            ];

        }
    }

    public function add_transaction_data( $withdrawal_id, $user_id, $amount, $type ) {

        $this->wpdb->insert(
            'j_users_transactions',
            array(
                'withdrawal_id'         => $withdrawal_id,
                'user_info_id'          => $user_id,
                'transaction_amount'    => $amount,
                'transaction_type'      => strtoupper( $type )
                )
            );

    }

    public function update_withdrawal_status( $withdrawal_status_info ) {

        $this->wpdb->update( 
            'j_users_withdrawal_status', 
            array( 
                'withdrawal_status'     => ( $withdrawal_status_info[ 'withdrawal_status' ] == "APPROVE" ) ? "APPROVED" : "REJECTED",
            ), 
            array( 'withdrawal_id' => $withdrawal_status_info[ 'withdrawal_id' ] )
        );

        $last_updated_withdrawal_status = $this->wpdb->get_results( 'SELECT * FROM j_users_withdrawal_status WHERE withdrawal_id=' . $withdrawal_status_info[ 'withdrawal_id' ] . '' );

        if ( $withdrawal_status_info[ 'withdrawal_status' ] == "APPROVE" ) {

            $this->add_transaction_data( $last_updated_withdrawal_status[0]->withdrawal_id, $last_updated_withdrawal_status[0]->user_info_id, $last_updated_withdrawal_status[0]->withdrawal_amount, 'Withdrawal' );

        }

        return [
            'withdrawal_id'     => $last_updated_withdrawal_status[0]->withdrawal_id,
            'user_info_id'      => $last_updated_withdrawal_status[0]->user_info_id,
            'withdrawal_amount' => $last_updated_withdrawal_status[0]->withdrawal_amount,
            'withdrawal_time'   => $last_updated_withdrawal_status[0]->withdrawal_time,
            'withdrawal_status' => $last_updated_withdrawal_status[0]->withdrawal_status
        ];

    }

    public function update_main_settings( $settings_data ) {

        for( $index = 1; $index <= count( $settings_data ); $index++ ) {

            $this->wpdb->update( 
                'j_main_settings', 
                array( 'set_value' => $settings_data[ $index - 1 ][ 'set_value' ] ), 
                array( 'set_name' => $settings_data[ $index - 1 ][ 'set_name' ] )
            );

            if( $index == count( $settings_data ) ) return [ 'status' => 'Success', 'message' => 'Setting Updated' ];

        }

    }

}

$User_Action = new User_Action;
