<?php

require_once( '../../../../wp-load.php' );
include_once( '../Objects/UserData.php' );

echo json_encode( $User_Data->get_users_transactions() );
