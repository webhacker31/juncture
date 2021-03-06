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
        <div class="modal-dialog modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">User Profile</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row border-bottom">
                        <div class="col-6 text-center">
                            <i class="rounded-circle fas fa-user-circle"></i>
                        </div>
                        <div class="col-6">
                            <p class="font-weight-bold">Username: <span class="username font-weight-normal"></span></p>
                            <p class="font-weight-bold">Password: <span class="password font-weight-normal"></span></p>
                            <p class="font-weight-bold">User ID: <span class="user-id font-weight-normal"></span></p>
                            <p class="font-weight-bold">Role: <span class="role font-weight-normal"></span></p>
                        </div>
                    </div>
                    
                    <div>
                        <h5 class="mt-3 mb-4">ADDITIONAL INFORMATION</h5>
                        <div class="row">
                            <div class="col-4">
                                <p class="font-weight-bold">First name:</p>
                                <p class="font-weight-bold">Last name:</p>
                                <p class="font-weight-bold">Middle name:</p>
                                <p class="font-weight-bold">Email:</p>
                                <p class="font-weight-bold">Address:</p>
                                <p class="font-weight-bold">Mobile No.:</p>
                                <p class="font-weight-bold">Date of Birth:</p>
                                <p class="font-weight-bold">Civil Status:</p>
                            </div>
                            <div class="col-8">
                                <p class="first-name"></p>
                                <p class="last-name"></p>
                                <p class="middle-name"></p>
                                <p class="email"></p>
                                <p class="address"></p>
                                <p class="mobile-number"></p>
                                <p class="birthdate"></p>
                                <p class="civil-status"></p>
                            </div>
                        </div>
                    </div>

                    <!-- <table class="table table-borderless w-auto">
                        <tbody>
                            <tr>
                                <td class="font-weight-bold p-1">Username</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="username p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Password</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="password p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">User ID</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="user-id p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Role</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="role p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">First name</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="first-name p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Last name</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="last-name p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Middle name</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="middle-name p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Mobile No.</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="mobile-number p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Address</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="address p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Date of Birth</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="birthdate p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Email</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="email p-1"></td>
                            </tr>
                            <tr>
                                <td class="font-weight-bold p-1">Civil Status</td>
                                <td class="font-weight-bold p-1 pr-3">:</td>
                                <td class="civil-status p-1"></td>
                            </tr>
                        </tbody>
                    </table> -->

                    <!-- <div class="row">
                        <div class="col-3 pr-0">
                            <p>Username</p>
                            <p>Password</p>
                            <p>User ID</p>
                            <p class="border-bottom">Role</p>
                            <p class="text-uppercase">Additional Info</p>
                            <p>First name</p>
                            <p>Last name</p>
                            <p>Middle name</p>
                            <p>Mobile No.</p>
                        </div>
                        <div class="col-1 p-0">
                            <p>:</p>
                            <p>:</p>
                            <p>:</p>
                            <p class="border-bottom">:</p>
                            <p>:</p>
                            <p>:</p>
                            <p>:</p>
                            <p>:</p>
                        </div>
                        <div class="col-8 pl-0">
                            <p class="username"></p>
                            <p class="password"></p>
                            <p class="user-id"></p>
                            <p class="role border-bottom"></p>
                            <p class="first-name"></p>
                            <p class="last-name"></p>
                            <p class="middle-name"></p>
                            <p class="mobile-number"></p>
                        </div>
                    </div> -->

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
</div>
