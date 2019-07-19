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
        <div class="container-fluid">

            <!-- Section: Team v.1 -->
            <section class="section team-section">

            <!-- Grid row -->
            <div class="row text-center">

                <!-- Grid column -->
                <div class="col-md-8 mb-4">

                <!-- Card -->
                <div class="card card-cascade cascading-admin-card user-card">

                    <!-- Card Data -->
                    <div class="admin-up d-flex justify-content-start">
                    <i class="fas fa-users info-color py-4 mr-3 z-depth-2"></i>
                    <div class="data">
                        <h5 class="font-weight-bold dark-grey-text">Edit Profile - <span class="text-muted">Complete your
                            profile</span></h5>
                    </div>
                    </div>
                    <!-- Card Data -->

                    <!-- Card content -->
                    <div class="card-body card-body-cascade">

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-lg-4">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form12" class="form-control form-control-sm">
                            <label for="form12" class="">Username</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form3" class="form-control form-control-sm">
                            <label for="form3" class="">Email address</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form4" class="form-control form-control-sm" disabled="">
                            <label for="form4" class="disabled">Company</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-6">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form5" class="form-control form-control-sm">
                            <label for="form5" class="">First name</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-6">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form5" class="form-control form-control-sm">
                            <label for="form5" class="">Last name</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-12">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form6" class="form-control form-control-sm">
                            <label for="form6" class="">Address</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-12">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form7" class="form-control form-control-sm">
                            <label for="form7" class="">City</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-6">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form8" class="form-control form-control-sm">
                            <label for="form8" class="">Country</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-lg-4 col-md-6">

                        <div class="md-form form-sm mb-0">
                            <input type="text" id="form9" class="form-control form-control-sm">
                            <label for="form9" class="">Postal Code</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-12">

                        <h4 class="text-muted text-left my-4">About me</h4>

                        <!-- Basic textarea -->
                        <div class="md-form mb-0">
                            <textarea type="text" id="form10" class="md-textarea form-control" rows="3"></textarea>
                            <label for="form10">Basic textarea</label>
                        </div>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    </div>
                    <!-- Card content -->

                </div>
                <!-- Card -->

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 mb-4">

                <!-- Card -->
                <div class="card profile-card">

                    <!-- Avatar -->
                    <div class="avatar z-depth-1-half mb-4">
                    <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(10).jpg" class="rounded-circle" alt="First sample avatar image">
                    </div>

                    <div class="card-body pt-0 mt-0">

                    <!-- Name -->
                    <h3 class="mb-3 font-weight-bold"><strong>Anna Deynah</strong></h3>
                    <h6 class="font-weight-bold cyan-text mb-4">Web Designer</h6>

                    <p class="mt-4 text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt
                        ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                        ullamco laboris nisi ut aliquip consequat.</p>

                    <a class="btn btn-info btn-rounded waves-effect waves-light"> Follow</a>

                    </div>

                </div>
                <!-- Card -->

                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row -->

            </section>
            <!-- Section: Team v.1 -->

            </div>
    </main>
</div>