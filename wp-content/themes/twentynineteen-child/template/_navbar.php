<?php

if ( isset( $_GET[ 'user_id' ] ) ) {

    $add_url_param = '&user_id=' . $_GET[ 'user_id' ];

}

?>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
    <div class="container">
        <a class="navbar-brand" href="https://mdbootstrap.com/docs/jquery/" target="_blank">
            <strong>Juncture</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <?php echo ($_GET['page'] == 'home') ? 'active' : '';?>">
                    <a class="nav-link" href="http://localhost/juncture/?page=home<?php echo ($add_url_param) ? $add_url_param : '' ?>">Home</a>
                </li>
                <li class="nav-item <?php echo ($_GET['page'] == 'aboutus') ? 'active' : '';?>">
                    <a class="nav-link" href="#">About Juncture</a>
                </li>

                <?php if ( isset( $_GET[ 'user_id' ] ) ) : ?>

                    <li class="nav-item <?php echo ( $_GET[ 'page' ] == 'login' ) ? 'active' : '';?>">
                        <span id="_logout" class="nav-link" style="cursor: pointer" data-user-id="<?php echo $_GET[ 'user_id' ] ?>">Logout</span>
                    </li>

                <?php else : ?>

                    <li class="nav-item <?php echo ($_GET['page'] == 'login') ? 'active' : '';?>">
                        <a class="nav-link" href="http://localhost/juncture/login/?page=login">Login</a>
                    </li>

                <?php endif; ?>

            </ul>
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a href="https://www.facebook.com/mdbootstrap" class="nav-link" target="_blank">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="https://twitter.com/MDBootstrap" class="nav-link" target="_blank">
                        <i class="fab fa-twitter"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>