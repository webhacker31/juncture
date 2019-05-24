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
                                            'user_authentication_code'  => generateRandomString()
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
                    return [
                        'user_info_id' => '',
                        'user_username' => '',
                        'user_password' => '',
                        'user_role' => '',
                        'user_referral_id' => '',
                        'user_upline_id' => '',
                        'user_authentication_code' => '',
                        'status' => 'failed',
                        'message' => 'Username already exist.'
                    ];
                }
            } else {
                return [
                    'user_info_id' => '',
                    'user_username' => '',
                    'user_password' => '',
                    'user_role' => '',
                    'user_referral_id' => '',
                    'user_upline_id' => '',
                    'user_authentication_code' => '',
                    'status' => 'failed',
                    'message' => "Upline ID doesn't exist."
                ];
            }
        } else {
            return [
                'user_info_id' => '',
                'user_username' => '',
                'user_password' => '',
                'user_role' => '',
                'user_referral_id' => '',
                'user_upline_id' => '',
                'user_authentication_code' => '',
                'status' => 'failed',
                'message' => "Referral ID doesn't exist."
            ];
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

}

$User_Action = new User_Action;
