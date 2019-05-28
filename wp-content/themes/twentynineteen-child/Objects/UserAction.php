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

    public function is_referral_id_exist( $user_referral_id ) {

        $is_referral_id_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users WHERE user_id='{$user_referral_id}'" );

        return $is_referral_id_exist;

    }

    public function is_upline_id_exist( $user_upline_id ) {

        $is_upline_id_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users WHERE user_id='{$user_upline_id}'" );

        return $is_upline_id_exist;

    }

    public function username_limit_check( $user_username ) {

        $is_username_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users_info WHERE user_username='{$user_username}'" );

        return $is_username_exist;

    }

    public function add_user( $user_data ) {

        $return_failed_msg = [
            'user_info_id' => '',
            'user_username' => '',
            'user_password' => '',
            'user_role' => '',
            'user_referral_id' => '',
            'user_upline_id' => '',
            'user_authentication_code' => '',
            'status' => 'failed',
            'message' => ""
        ];

        if ( $this->username_limit_check( $user_data[ "user_username" ] ) >= 7 ) {

            if ( $this->is_referral_id_exist( $user_data[ "user_referral_id" ] ) ) {

                if ( $this>is_upline_id_exist( $user_data[ "user_upline_id" ] ) ) {

                    $this->wpdb->query( "INSERT INTO j_users (user_id) VALUES (NULL)" );

                    $user_last_id = $this->wpdb->get_var( "SELECT user_id FROM j_users ORDER BY user_id DESC LIMIT 1" );

                    $this->wpdb->insert(
                                        'j_users_info',
                                        array(
                                            'user_info_id'              => $user_last_id,
                                            'user_username'             => $user_data[ 'user_username' ],
                                            'user_password'             => $user_data[ 'user_password' ],
                                            'user_role'                 => $user_data[ 'user_role' ],
                                            'user_referral_id'          => $user_data[ 'user_referral_id' ],
                                            'user_upline_id'            => $user_data[ 'user_upline_id' ],
                                            'user_authentication_code'  => $this->generateRandomString()
                                            )
                                        );

                    $last_inserted_user = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$user_last_id}'" );

                    return [
                        'user_info_id' => $last_inserted_user[0]->user_info_id,
                        'user_username' => $last_inserted_user[0]->user_username,
                        'user_password' => $last_inserted_user[0]->user_password,
                        'user_role' => $last_inserted_user[0]->user_role,
                        'user_referral_id' => $last_inserted_user[0]->user_referral_id,
                        'user_upline_id' => $last_inserted_user[0]->user_upline_id,
                        'user_authentication_code' => $last_inserted_user[0]->user_authentication_code,
                        'status' => 'success',
                        'message' => 'User successfully registered.'
                    ];

                } else {

                    $return_failed_msg['message'] = "Upline ID doesn't exist.";
        
                    return $return_failed_msg;

                }
            } else {

                $return_failed_msg['message'] = "Referral ID doesn't exist.";
    
                return $return_failed_msg;

            }

        } else {

            $return_failed_msg['message'] = 'Username exceeds the limit.';

            return $return_failed_msg;

        }

    }

    public function delete_user( $user_id ) {

        $this->wpdb->delete( 'j_users', array( 'user_id' => $user_id ) );
        $this->wpdb->delete( 'j_users_info', array( 'user_info_id' => $user_id ) );

    }

    public function update_user( $user_data ) {

        $this->wpdb->update( 
            'j_users_info', 
            array( 
                'user_username'     => $user_data[ 'user_username' ],
                'user_password'     => $user_data[ 'user_password' ],
                'user_role'         => $user_data[ 'user_role' ],
                'user_referral_id'  => $user_data[ 'user_referral_id' ],
                'user_upline_id'    => $user_data[ 'user_upline_id' ],
            ), 
            array( 'user_info_id' => $user_data[ 'user_info_id' ] )
        );

        $last_updated_user = $this->wpdb->get_results( "SELECT * FROM j_users_info WHERE user_info_id='{$user_data[ 'user_info_id' ]}'" );

        return [
            'user_info_id' => $last_updated_user[0]->user_info_id,
            'user_username' => $last_updated_user[0]->user_username,
            'user_password' => $last_updated_user[0]->user_password,
            'user_role' => $last_updated_user[0]->user_role,
            'user_referral_id' => $last_updated_user[0]->user_referral_id,
            'user_upline_id' => $last_updated_user[0]->user_upline_id,
            'user_authentication_code' => $last_updated_user[0]->user_authentication_code,
        ];

    }

    public function add_withdrawal_request( $user_id, $pairing_data ) {

        $tax = 10;
        $processing_fee = 50;
        $travel_incentive = 100;
        $pairing_bonus_amount = 500;

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

}

$User_Action = new User_Action;
