<?php

require_once( "../../../../wp-load.php" );
include_once( "../Objects/UserData.php" );

// $user_id = $_POST[ 'user_id' ];
$user_id = '000001';
$user_downlines = [];
$users_to_check = [];
$counter = 0;
$available_counter = 0;

$main_user_downline = $User_Data->get_user_downline_by_id( $user_id );

foreach ( stack_geneology( $main_user_downline, $user_id, $available_counter ) as $data_key ) {
        
    array_push( $user_downlines, $data_key );

}

array_push( $users_to_check, ( $main_user_downline[0]->user_dl_left_id == "" ) ? "Available" : $main_user_downline[0]->user_dl_left_id );
array_push( $users_to_check, ( $main_user_downline[0]->user_dl_right_id == "" ) ? "Available" : $main_user_downline[0]->user_dl_right_id );

for ( $index = 0; $index < count( $users_to_check ) - 1; $index++ ) { 

    if ( $users_to_check[ $index ] != "Available" ) {

        $the_users_downline = $User_Data->get_user_downline_by_id( $users_to_check[ $index ] );

        foreach ( stack_geneology( $the_users_downline, $users_to_check[ $index ], $available_counter ) as $data_key ) {
        
            array_push( $user_downlines, $data_key );
        
        }

        array_push( $users_to_check, ( $the_users_downline[0]->user_dl_left_id == "" ) ? "Available" : $the_users_downline[0]->user_dl_left_id );
        array_push( $users_to_check, ( $the_users_downline[0]->user_dl_right_id == "" ) ? "Available" : $the_users_downline[0]->user_dl_right_id );

    }

}

function stack_geneology( $data_obj, $parent_user_id, &$available_counter ) {

    $stack_geneology = [];

    foreach ( $data_obj as $data_key ) {
        
        array_push( $stack_geneology, array( ( $data_key->user_dl_left_id == "" ) ? strval( ++$available_counter ) : $data_key->user_dl_left_id, $parent_user_id, ( $data_key->user_dl_left_id == "" ) ? "Available" : $data_key->user_dl_left_id ) );
        array_push( $stack_geneology, array( ( $data_key->user_dl_right_id == "" ) ? strval( ++$available_counter ) : $data_key->user_dl_right_id, $parent_user_id, ( $data_key->user_dl_right_id == "" ) ? "Available" : $data_key->user_dl_right_id ) );

    }

    return $stack_geneology;

}

array_unshift( $user_downlines, array( $user_id, '', $user_id ) );

echo json_encode( $user_downlines );
