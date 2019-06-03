<div id="__regular">
    <header>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container-fluid">
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
        <div class="sidebar-fixed position-fixed">
            <a class="logo-wrapper waves-effect">
                <img src="<?php echo esc_url( home_url() ) ?>/wp-content/themes/twentynineteen-child/asset/images/juncture-logo.jpg" class="img-fluid" alt="">
            </a>
            <div class="list-group list-group-flush">
                <a href="#" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-chart-pie mr-3"></i>Dashboard</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/binary/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item active waves-effect">
                    <i class="fas fa-user mr-3"></i>Binary</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/earnings/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-wallet mr-3"></i>Earnings</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/transaction/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-table mr-3"></i>Transactions</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/withdrawal/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-coins mr-3"></i>Withdrawals</a>
            </div>
        </div>
    </header>

    <main class="pt-5 mx-lg-5">
        <div id="binary" class="mt-5"></div>
        <div id="earnings-table" class="mt-5">
            <table id="_user-regular-table-list" class="dataTable table table-striped mt-5" cellpadding="0" cellspacing="0" border="0"></table>
            
            <?php if ( ! isset( $_GET[ 'peek_user_binary' ] ) ) : ?>
                <button class="_request-withdrawal-btn btn btn-primary m-0 mt-5">Request Withdraw</button>
            <?php endif; ?>

        </div>
    </main>

    <div class="modal fade" id="success-withdrawal-modal" tabindex="-1" role="dialog" aria-labelledby="success-withdrawal-modal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Withdrawal has now been processed.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="failed-withdrawal-modal" tabindex="-1" role="dialog" aria-labelledby="failed-withdrawal-modal" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Withdrawal failed.</p>
                </div>
            </div>
        </div>
    </div>

</div>
