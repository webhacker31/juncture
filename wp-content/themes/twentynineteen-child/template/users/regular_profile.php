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
        <div class="_sidebar-overlay"></div>
    </header>

    <div class="row">
        <div class="col-lg-12 mb-4">
            <div class="card card-cascade narrower">
                <div class="view view-cascade gradient-card-header mdb-color lighten-3">
                    <h5 class="mb-0 font-weight-bold">Edit Account</h5>
                </div>
                <div class="card-body card-body-cascade text-center">
                    <form>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <input type="text" id="form1" class="form-control validate" value="Company, inc" disabled="">
                                    <label for="form1" data-error="wrong" data-success="right" class="active">Company</label>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <input type="text" id="form2" class="form-control validate">
                                    <label for="form2" data-error="wrong" data-success="right">Username</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <input type="text" id="form81" class="form-control validate">
                                    <label for="form81" data-error="wrong" data-success="right">First name</label>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <input type="text" id="form82" class="form-control validate">
                                    <label for="form82" data-error="wrong" data-success="right">Last name</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <input type="email" id="form76" class="form-control validate">
                                    <label for="form76">Email address</label>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <input type="text" id="form77" class="form-control validate">
                                    <label for="form77" data-error="wrong" data-success="right">Website Address</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="md-form mb-0">
                                    <textarea type="text" id="form78" class="md-textarea form-control" rows="3"></textarea>
                                    <label for="form78">About me</label>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12 text-center my-4">
                                <span class="waves-input-wrapper waves-effect waves-light"><input type="submit" value="Update Account" class="btn btn-info btn-rounded"></span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>