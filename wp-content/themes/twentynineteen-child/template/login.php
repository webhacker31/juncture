<?php

/*
 Template Name: Login
 */

wp_head();

?>

<div id="login" class="d-flex justify-content-center align-items-center bg-light w-100 h-100">
    <div class="login-box bg-white p-5 rounded">
        <form action="/juncture/" method="post" class="mb-0">
            <div class="form-group">
                <input type="username" class="form-control" id="username" name="username" aria-describedby="emailHelp" placeholder="Username or ID">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</div>

<?php wp_footer(); ?>