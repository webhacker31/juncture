<?php

/*
 Template Name: Register
 */

wp_head();

?>

<div id="register" class="d-flex flex-column justify-content-center align-items-center bg-light w-100 h-100">

    <div class="register-box bg-white p-5 rounded">
        <div class="register-form">
            <div class="form-group">
                <input type="username" class="form-control" id="username" name="username" placeholder="Username">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <div class="form-group">
                <div class="input-group">
                    <select class="custom-select" id="role" name="role">
                        <option value="regular">Regular</option>
                        <option value="admin">Admin</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="referral_id" name="referral_id" placeholder="Referral ID">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="upline_id" name="upline_id" placeholder="Upline ID">
            </div>
            <div class="form-group">
                <div class="input-group">
                    <select class="custom-select" id="position" name="position">
                        <option value="left">Left</option>
                        <option value="right">Right</option>
                    </select>
                </div>
            </div>
            <button type="button" class="btn form-reg-submit btn-primary">Register</button>
        </div>
    </div>
</div>

<?php wp_footer(); ?>

<script src="/juncture/wp-content/themes/twentynineteen-child/js/request/register.js" type="text/javascript"></script>