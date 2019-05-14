<?php

class User_Action {

    private $wpdb;

    public function __construct() {

        global $wpdb;
        $this->wpdb = $wpdb;

    }

}

$User_Action = new User_Action;