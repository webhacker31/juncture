<div id="__regular">
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
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/binary/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-user mr-3"></i>Binary</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/earnings/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-wallet mr-3"></i>Earnings</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/transaction/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-table mr-3"></i>Transactions</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/withdrawal/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-coins mr-3"></i>Withdrawals</a>
                <a href="<?php echo esc_url( home_url() ) ?>/dashboard/profile/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item active waves-effect">
                    <i class="fas fa-user mr-3"></i>Profile</a>
            </div>
        </div>
        <div class="_sidebar-overlay"></div>
    </header>

    <main class="pt-5 mx-lg-5">
        <div id="regular-profile" class="container-fluid">
            <section class="section team-section p-0 mt-5">
                <div class="row text-center">
                    <div class="col-md-12 mb-4">
                        <div class="card card-cascade cascading-admin-card user-card mt-3">
                            <div class="admin-up d-flex justify-content-start">
                                <i class="fas fa-users info-color py-4 mr-3 z-depth-2"></i>
                                <div class="data">
                                    <h5 class="font-weight-bold dark-grey-text">My Profile</h5>
                                </div>
                            </div>
                            <div class="card-body card-body-cascade">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form12" class="username-input form-control form-control-sm" readonly>
                                            <label for="form12" class="">Username</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form3" class="user-pw-input form-control form-control-sm" readonly>
                                            <label for="form3" class="">Password</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form4" class="user-id-input form-control form-control-sm" readonly>
                                            <label for="form4" class="disabled">User ID</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form5" class="form-control form-control-sm" readonly>
                                            <label for="form5" class="">First name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form5" class="form-control form-control-sm" readonly>
                                            <label for="form5" class="">Middle name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form5" class="form-control form-control-sm" readonly>
                                            <label for="form5" class="">Last name</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form7" class="form-control form-control-sm" readonly>
                                            <label for="form7" class="">Email</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form8" class="form-control form-control-sm" readonly>
                                            <label for="form8" class="">Mobile Number</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form6" class="form-control form-control-sm" readonly>
                                            <label for="form6" class="">Address</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form4" class="user-role-input form-control form-control-sm" readonly>
                                            <label for="form4" class="disabled">Role</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form9" class="form-control form-control-sm" readonly>
                                            <label for="form9" class="">Date of Birth</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="md-form form-sm mb-0">
                                            <input type="text" id="form9" class="form-control form-control-sm" readonly>
                                            <label for="form9" class="">Civil Status</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex">
                    <button class="_edit-btn btn btn btn-success ml-0"><i class="fas fa-pencil-alt mr-2"></i>Edit</button>
                    <button class="_save-btn btn btn btn-primary" disabled><i class="fas fa-save mr-2"></i>Save</button>
                </div>
            </section>
        </div>
    </main>
</div>