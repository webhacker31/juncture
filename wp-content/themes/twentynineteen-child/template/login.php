<?php

/*
 Template Name: Login
 */

wp_head();

include_once( '_navbar.php' );

?>

<div id="login" class="d-flex flex-column justify-content-center align-items-center w-100 h-100">
    <div class="login_box p-5 rounded">
        <div class="login_form">
            <div class="md-form">
                <input type="text" class="form-control" id="username" name="username">
                <label for="username">Username or ID</label>
            </div>
            <div class="md-form">
                <input type="password" class="form-control" id="password" name="password">
                <label for="password">Password</label>
            </div>
            <button type="submit" class="btn form_login-submit btn-primary mx-0 mb-0 mt-5">Login</button>
        </div>
    </div>
</div>

<?php wp_footer(); ?>

<script src="/juncture/wp-content/themes/twentynineteen-child/js/request/login.js" type="text/javascript"></script>
