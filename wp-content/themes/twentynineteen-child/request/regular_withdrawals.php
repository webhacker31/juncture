<?php

require_once( '../../../../wp-load.php' );
include_once( '../Objects/UserData.php' );

echo json_encode( $User_Data->get_user_withdrawal_status_by_id( $_GET[ 'user_id' ] ) );
