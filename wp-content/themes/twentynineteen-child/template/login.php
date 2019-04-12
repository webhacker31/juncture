<?php

/*
 Template Name: Login
 */

wp_head();

?>

<div id="login" class="d-flex flex-column justify-content-center align-items-center bg-light w-100 h-100">
    <div class="login-box bg-white p-5 rounded">
        <div class="login-form">
            <div class="form-group">
                <input type="username" class="form-control" id="username" name="username" aria-describedby="emailHelp" placeholder="Username or ID">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <button type="submit" class="btn form-login-submit btn-primary">Login</button>
        </div>
    </div>
</div>

<?php wp_footer(); ?>

<script src="/juncture/wp-content/themes/twentynineteen-child/js/request/login.js" type="text/javascript"></script>