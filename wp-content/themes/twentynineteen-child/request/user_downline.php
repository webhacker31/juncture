<?php

require_once( "../../../../wp-load.php" );
include_once( "../Objects/UserData.php" );

// echo json_encode( $User_Data->get_user_geneology_by_id( $_POST[ 'user_id' ] ) );
echo json_encode( $User_Data->get_user_geneology_by_id( '000001' ) );
