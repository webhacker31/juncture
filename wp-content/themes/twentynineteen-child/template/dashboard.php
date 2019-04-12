<?php

/*
 Template Name: Dashboard
 */

session_start();

wp_head();

echo $_SESSION['user_information'];

if (isset($_SESSION['user_information'])) {
    
    echo $_SESSION['user_information'];

} else {

    echo 'HEWLLO';

}

wp_footer();

?>