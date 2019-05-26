<?php

require_once( '../../../../wp-load.php' );
include_once( '../Objects/UserAction.php' );

echo json_encode( $User_Action->add_withdrawal_request( $_GET[ 'user_id' ], $_GET[ 'pairing_data' ] ) );
