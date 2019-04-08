<?php


if (isset($_POST['username']) && isset($_POST['password'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];

} else { // If direct access

    require_once '404.php?error=directaccess';

}

?>