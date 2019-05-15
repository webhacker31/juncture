<?php

class User_Action {

    private $wpdb;

    public function __construct() {

        global $wpdb;
        $this->wpdb = $wpdb;

    }

    public function add_user( $user_data ) {

        function generateRandomString( $length = 10 ) {

            $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $charactersLength = strlen( $characters );
            $randomString = '';

            for ( $i = 0; $i < $length; $i++ ) {
                $randomString .= $characters[ rand( 0, $charactersLength - 1 ) ];
            }

            return $randomString;

        }
        
        $is_referral_id_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users WHERE user_id='{$user_data[ "user_referral_id" ]}'" );

        /**
         * Check if referral id exist
         * if not then throw error message
         * 
         */
        if ( $is_referral_id_exist ) {

            $is_upline_id_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users WHERE user_id='{$user_data[ "user_upline_id" ]}'" );

            /**
             * Check if upline id exist
             * if not then throw error message
             * 
             */
            if ( $is_upline_id_exist ) {

                $is_username_exist = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users_info WHERE user_username='{$user_data[ "user_username" ]}'" );

                /**
                 * Check if username exist
                 * if exist then throw error message
                 * 
                 */
                if ( !$is_username_exist ) {
                    $this->wpdb->query( "INSERT INTO j_users (user_id) VALUES (NULL)" );
                    $users_last_id = $this->wpdb->get_var( "SELECT user_id FROM j_users ORDER BY user_id DESC LIMIT 1" );

                    $add_user = $this->wpdb->insert(
                                                    'j_users_info',
                                                    array(
                                                        'user_info_id'              => $users_last_id,
                                                        'user_username'             => $user_data[ 'user_username' ],
                                                        'user_password'             => $user_data[ 'user_password' ],
                                                        'user_role'                 => $user_data[ 'user_role' ],
                                                        'user_referral_id'          => $user_data[ 'user_referral_id' ],
                                                        'user_upline_id'            => $user_data[ 'user_upline_id' ],
                                                        'user_authentication_code'  => generateRandomString()
                                                        )
                                                    );

                    // return $add_user;

                    /**
                     * If insertion success
                     * 
                     */
                    if ($user_insert_data) {
                        $status = [
                            'status' => 'success',
                            'message' => 'User successfully registered.'
                        ];
                    } else {
                        $status = [
                            'status' => 'failed',
                            'message' => 'Registration Failed.'
                        ];
                    }
                } else {
                    $status = [
                        'status' => 'failed',
                        'message' => 'Username already exist.'
                    ];
                }
            } else {
                $status = [
                    'status' => 'failed',
                    'message' => "Upline ID doesn't exist."
                ];
            }
        } else {
            $status = [
                'status' => 'failed',
                'message' => "Referral ID doesn't exist."
            ];
        }
    }
}

$User_Action = new User_Action;