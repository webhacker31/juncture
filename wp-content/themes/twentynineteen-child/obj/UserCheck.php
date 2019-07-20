<?php

require_once( 'UserData.php' );

class User_Check {

    private $wpdb;
    private $User_Data;

    public function __construct() {

        global $wpdb;
        $this->wpdb = $wpdb;
        $this->User_Data = new User_Data();

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

    public function is_user_reach_account_limit( $user_username ) {

        $account_num = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users_info WHERE user_username='{$user_username}'" );

        return ( $account_num > 7 ) ? true : false;

    }

    /**
     * Check if has other accounts
     * 
     * @param String
     * @return Boolean
     */
    public function is_multiple_account( $user_username ) {

        $account_num = $this->wpdb->get_var( "SELECT COUNT(*) FROM j_users_info WHERE user_username='{$user_username}'" );

        return ( $account_num > 1 ) ? true : false ;

    }

    /**
     * Cross lining check
     * 
     * Other accounts should be under of the main account of user. Otherwise this
     * will fall as Cross lining issue
     * 
     * NOTE: We check only the Direct User ID if its a downline of users main account
     * NOTE: This is only for user that has multiple accounts
     * 
     * @param String
     * @return Boolean
     */
    public function is_under_main_account( $user_upline_id, $user_username ) {

        $main_account_id = $this->User_Data->get_user_main_account( $user_username )->user_info_id;

        $main_account_downlines = $this->User_Data->get_user_geneology_by_id( $main_account_id );

        return ( array_search( $user_upline_id, array_column( $main_account_downlines, 2 ) ) ) ? true : false;

    }

}

$User_Check = new User_Check();