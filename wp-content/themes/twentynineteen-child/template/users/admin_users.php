<div id="__admin">
    <header>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container-fluid">
                <a href="#" class="_sidebar-mobile-toggler btn btn-primary p-3"><i class="fas fa-bars"></i></a>
                <a class="navbar-brand waves-effect" href="<?php echo esc_url( home_url() ) ?>/?page=home&user_id=<?php echo $_GET[ 'user_id' ]; ?>" target="_blank">
                    <strong class="blue-text">Juncture</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <!-- <li class="nav-item <?php // echo ( $_GET[ 'page' ] == 'home' ) ? 'active' : '';?>">
                            <a class="nav-link" href="<?php // echo esc_url( home_url() ) ?>/?page=home&user_id=<?php // echo $_GET[ 'user_id' ]; ?>">Home</a>
                        </li> -->
                        <!-- <li class="nav-item <?php // echo ( $_GET[ 'page' ] == 'aboutus' ) ? 'active' : '';?>">
                            <a class="nav-link" href="#">About Juncture</a>
                        </li> -->
                        <li class="nav-item <?php echo ( $_GET[ 'page' ] == 'login' ) ? 'active' : '';?>">
                            <span id="_logout" class="nav-link" style="cursor: pointer" data-user-id="<?php echo $_GET[ 'user_id' ] ?>">Logout</span>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="_sidebar-mobile sidebar-fixed position-fixed">
            <a class="logo-wrapper waves-effect">
                <img src="<?php echo esc_url( home_url() ) ?>/wp-content/themes/twentynineteen-child/asset/images/juncture-logo.jpg" class="img-fluid" alt="">
            </a>
            <div class="list-group list-group-flush">
                <a href="#" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-chart-pie mr-3"></i>Dashboard</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/users/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item active waves-effect">
                    <i class="fas fa-user mr-3"></i>Users</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/transaction/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-table mr-3"></i>Transactions</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/withdrawal/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-coins mr-3"></i>Withdrawals</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/main-settings/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-coins mr-3"></i>Main Settings</a>
            </div>
        </div>
        <div class="_sidebar-overlay"></div>
    </header>

    <main class="pt-5 mx-lg-5">
        <div class="mt-5">
            <table id="_user-table-list" class="dataTable table table-striped mt-5" cellpadding="0" cellspacing="0" border="0"></table>
        </div>
    </main>

    <div class="modal fade" id="modalUserInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">User Profile</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <span class="first-name">First name:</span>
                    <span class="last-name">Last name:</span>
                    <span class="middle-name">Middle name:</span>
                    <span class="mobile-number">Mobile No.:</span>
                    <span class="address">Address</span>
                    <span class="birthdate">Date of Birth:</span>
                    <span class="email">Email:</span>
                    <span class="civil-status">Civil Status:</span>
                    <p>First name: <span class="first-name"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
</div>
