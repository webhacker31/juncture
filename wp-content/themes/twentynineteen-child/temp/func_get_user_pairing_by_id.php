<?php

class User_Data {

    public function get_user_pairing_by_id( $user_id, $purpose = '' ) {
    
        $temp_pairing_stack = array();
        $pairing_check = array();
        $pairing_success = array();
        $data_counter = 2;
        $prev_data_counter = 0;
        $available_counter = 0;
    
        $user_geneology_data = $this->get_user_geneology_by_id( $user_id );
    
        for( $index = 1; $index < count( $user_geneology_data ); ) {
    
            if( $index <= $data_counter ) {
    
                array_push( $temp_pairing_stack, $user_geneology_data[ $index ][2] );
    
                if( $user_geneology_data[ $index ][2] == "Available" ) $available_counter++;
    
                $index++;
    
            }
            
            if( $index > $data_counter ) {
    
                array_push( $pairing_check, $temp_pairing_stack );
    
                unset( $temp_pairing_stack );
                $temp_pairing_stack = array();
                $data_counter_holder = $data_counter;
                $data_counter = $data_counter + ( ( ( $data_counter - $prev_data_counter ) * 2 ) - ( $available_counter * 2 ) );
                $prev_data_counter = $data_counter_holder;
                $available_counter = 0;
    
            }
    
        }
    
        foreach( $pairing_check as $pairing_group ) {
    
            $pairing_group_count = count( $pairing_group );
            $pairing_group_half_count = $pairing_group_count / 2;
            $available_counter = 0;
    
            for( $index = $pairing_group_count; $index > $pairing_group_half_count; $index-- ) {
    
                if( $pairing_group[ $index - 1 ] == 'Available' ) $available_counter++;
    
            }
    
            if( $available_counter == $pairing_group_half_count ) break;
    
            for( $index = 0; $index < $pairing_group_count; $index++ ) {
    
                if( $pairing_group[ $index ] != "Available" && $pairing_group[ $pairing_group_count - ( $index + 1 ) ] != "Available") {
    
                    $is_pairing_exist = $this->wpdb->get_var( 'SELECT COUNT(*) FROM j_users_earnings WHERE user_info_id="' . $user_id . '" AND earning_pair_left="' . $pairing_group[ $index ] . '" OR user_info_id="' . $user_id . '" AND earning_pair_right="' . $pairing_group[ $index ] . '"' );
    
                    if( ! $is_pairing_exist ) {
    
                        array_push( $pairing_success, array( $pairing_group[ $index ], $pairing_group[ $pairing_group_count - ( $index + 1 ) ] ) );
    
                    }
    
                }
    
                if( $index + 1 == $pairing_group_count / 2 ) {
    
                    break;
    
                }
    
            }
    
        }
    
        if( $purpose == 'request_withdrawal' ) {
    
            return $pairing_success;
    
        } else {
    
            return $this->get_user_pairing_obj_format( $pairing_success );
    
        }
    
    }

}