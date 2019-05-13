<div id="__regular">
    <header>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
            <div class="container-fluid">
                <a class="navbar-brand waves-effect" href="http://localhost/juncture/?page=home&user_id=<?php echo $_GET[ 'user_id' ]; ?>" target="_blank">
                    <strong class="blue-text">Juncture</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item <?php echo ( $_GET[ 'page' ] == 'home' ) ? 'active' : '';?>">
                            <a class="nav-link" href="http://localhost/juncture/?page=home&user_id=<?php echo $_GET[ 'user_id' ]; ?>">Home</a>
                        </li>
                        <li class="nav-item <?php echo ( $_GET[ 'page' ] == 'aboutus' ) ? 'active' : '';?>">
                            <a class="nav-link" href="#">About Juncture</a>
                        </li>
                        <li class="nav-item <?php echo ( $_GET[ 'page' ] == 'login' ) ? 'active' : '';?>">
                            <span id="_logout" class="nav-link" style="cursor: pointer" data-user-id="<?php echo $_GET[ 'user_id' ] ?>">Logout</span>
                        </li>
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
        <div class="sidebar-fixed position-fixed">
            <a class="logo-wrapper waves-effect">
                <img src="https://via.placeholder.com/150x50" class="img-fluid" alt="">
            </a>
            <div class="list-group list-group-flush">
                <a href="#" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-chart-pie mr-3"></i>Dashboard</a>
                <a href="http://localhost/juncture/dashboard/binary/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-user mr-3"></i>Binary</a>
                <a href="http://localhost/juncture/dashboard/earnings/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item active waves-effect">
                    <i class="fas fa-wallet mr-3"></i>Earnings</a>
                <a href="http://localhost/juncture/dashboard/transaction/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-table mr-3"></i>Transactions</a>
                <a href="http://localhost/juncture/dashboard/withdrawal/?user_id=<?php echo $_GET[ 'user_id' ] ?>" class="list-group-item list-group-item-action waves-effect">
                    <i class="fas fa-coins mr-3"></i>Withdrawals</a>
            </div>
        </div>
    </header>
    <main class="pt-5 mx-lg-5">
        <div class="mt-5">
            <table id="_user-regular-table-list" class="dataTable table table-striped mt-5" cellpadding="0" cellspacing="0" border="0"></table>
        </div>
        <div class="mt-5 w-50">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="header-earning border-bottom font-weight-bold pb-1 mb-1">
                            Earning Type
                        </div>
                        <div class="earning-type">
                            <p>Pairing</p>
                        </div>
                    </div>
                    <div class="col">
                        <div class="header-earning border-bottom font-weight-bold pb-1 mb-1">
                            Amount
                        </div>
                        <div class="earning-amount">
                            <p>1000</p>
                        </div>
                        <div class="total-earnings mt-3">
                            <p class="border-bottom font-weight-bold pb-1 mb-1">Total Earnings</p>
                            <div class="earnings">
                                <p>1000</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-end">
                    <button class="btn btn-primary">Request Withdraw</button>
                </div>
            </div>
        </div>
    </main>
</div>
