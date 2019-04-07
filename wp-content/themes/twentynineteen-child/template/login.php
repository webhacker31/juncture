<?php

/*
 Template Name: Login
 */

wp_head();

?>

<div id="login" class="d-flex justify-content-center align-items-center bg-light w-100 h-100">
    <div class="login-box bg-white p-5 rounded">
        <form class="mb-0">
            <div class="form-group">
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Username">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</div>

<?php

wp_footer();

?>