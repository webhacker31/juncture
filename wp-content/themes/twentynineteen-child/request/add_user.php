<?php

require_once( '../../../../wp-load.php' );
include_once( '../Objects/UserAction.php' );

echo json_encode( $User_Action->add_user(  ) );
