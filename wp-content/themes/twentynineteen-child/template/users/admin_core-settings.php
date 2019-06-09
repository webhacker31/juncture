<div id="__admin">
    <header>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container-fluid">
                <a class="navbar-brand waves-effect" href="<?php echo esc_url( home_url() ) ?>/?page=home&user_id=<?php echo $_GET[ 'user_id' ]; ?>" target="_blank">
                    <strong class="blue-text">Juncture</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <!-- <li class="nav-item <?php // echo ( $_GET[ 'page' ] == 'home' ) ? 'active' : '';?>">
                            <a class="nav-link" href="<?php // echo esc_url( home_url() ) ?>/?page=home&user_id=<?php // echo $_GET[ 'user_id' ]; ?>">Home</a>
                        </li>
                        <li class="nav-item <?php // echo ( $_GET[ 'page' ] == 'aboutus' ) ? 'active' : '';?>">
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
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/users/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-user mr-3"></i>Users</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/transaction/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-table mr-3"></i>Transactions</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/withdrawal/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-coins mr-3"></i>Withdrawals</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/settings/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item active waves-effect">
                    <i class="fas fa-coins mr-3"></i>Main Settings</a>
            </div>
        </div>
    </header>

    <main class="pt-5 mx-lg-5">
        <div id="main_settings" class="mt-5">
            <div class="card z-depth-0 bordered mb-5">
                <div class="card-header">
                    <h5 class="font-weight-bold mb-0">Logo</h5>
                </div>
                <div class="card-body">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Upload Logo</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="_file-logo">
                            <label class="custom-file-label" for="_file-logo">Choose file</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card z-depth-0 bordered mb-5">
                <div class="card-header">
                    <h5 class="font-weight-bold mb-0">Fees</h5>
                </div>
                <div class="card-body">
                    <div class="md-form">
                        <input type="number" min="0" id="_pairing-bunos" class="form-control">
                        <label for="_pairing-bunos">Pairing Bonus</label>
                    </div>
                    <div class="md-form">
                        <input type="number" min="0" id="_tax-fee" class="form-control">
                        <label for="_tax-fee">Tax Fee</label>
                    </div>
                    <div class="md-form">
                        <input type="number" min="0" id="_processing-fee" class="form-control">
                        <label for="_processing-fee">Processing Fee</label>
                    </div>
                    <div class="md-form">
                        <input type="number" min="0" id="_travel-incentive" class="form-control">
                        <label for="_travel-incentive">Travel Incentive</label>
                    </div>
                </div>
            </div>
            <button class="_save-settings-btn btn btn-primary m-0">Save Settings</button>
        </div>
    </main>
</div>
