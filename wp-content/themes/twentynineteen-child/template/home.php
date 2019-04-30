<?php

/*
 Template Name: Home
 */

wp_head();

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
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" target="_blank">About Juncture</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" target="_blank">Login</a>
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

<div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="view"
                style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/77.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                    <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4">Welcome to Juncture</h1>
                        <p><strong>Donec urna enim, rhoncus ut ante sit amet</strong></p>
                        <p class="mb-4 d-none d-md-block"><strong>Vestibulum enim odio, egestas vitae. In varius metus
                                odio, ac fringilla leo posuere ac. Etiam placerat dapibus nibh at vestibulum. Cras quis
                                bibendum enim.</strong></p>
                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/"
                            class="btn btn-outline-white btn-lg">Get Started!</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="view"
                style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/47.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                    <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4">Duis vitae facilisis sem</h1>
                        <p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit</strong></p>
                        <p class="mb-4 d-none d-md-block"><strong>Praesent nec lobortis libero, id dapibus justo.
                                Pellentesque egestas nibh ut arcu ornare ultricies. Cras elementum turpis non hendrerit
                                ultrices.</strong></p>
                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/"
                            class="btn btn-outline-white btn-lg">Get Started!</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="view"
                style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/79.jpg'); background-repeat: no-repeat; background-size: cover;">
                <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                    <div class="text-center white-text mx-5 wow fadeIn">
                        <h1 class="mb-4">Aenean dapibus</h1>
                        <p><strong>Integer posuere augue vel tincidunt posuere</strong></p>
                        <p class="mb-4 d-none d-md-block"><strong>Donec at eros nec ipsum semper rhoncus vel sit amet
                                dui. Donec urna enim, rhoncus ut ante sit amet, luctus luctus tortor.</strong></p>
                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/"
                            class="btn btn-outline-white btn-lg">Get Started!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>

<section class="section">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Product #1</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Product #2</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="view overlay">
                        <img class="card-img-top"
                            src="https://mdbootstrap.com/img/Mockups/Lightbox/Thumbnail/img%20(67).jpg"
                            alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Product #3</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="row">
            <h1 class="display-4">Maecenas eleifend enim turpis</h1>
            <p>Donec suscipit sapien vestibulum risus ullamcorper, et vestibulum ipsum sollicitudin. Duis vestibulum
                magna interdum malesuada tempus. Nunc interdum diam vulputate nisi tincidunt laoreet. Sed sit amet sem
                id velit hendrerit tristique in finibus tellus.</p>
            <h1 class="display-4">Integer posuere augue</h1>
            <p>Phasellus vehicula magna vel dolor efficitur aliquam. Sed a est maximus urna interdum mollis. Phasellus
                facilisis neque quam, in volutpat felis tempus nec.</p>
            <h1 class="display-4">Donec at eros nec ipsum</h1>
            <p>Duis vestibulum magna interdum malesuada tempus. Ut nulla tortor, vulputate et mauris id, faucibus
                vulputate leo. Ut quis semper diam.</p>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="row">
            <div id="carousel-example-2z" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-2z" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-2z" data-slide-to="1"></li>
                    <li data-target="#carousel-example-2z" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(130).jpg"
                            alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(129).jpg"
                            alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(70).jpg"
                            alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carousel-example-2z" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel-example-2z" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section>

<footer class="page-footer text-center font-small mt-4 wow fadeIn">
    <div class="pt-4">
        <a class="btn btn-outline-white" href="https://mdbootstrap.com/docs/jquery/getting-started/download/"
            target="_blank" role="button">Download MDB
            <i class="fas fa-download ml-2"></i>
        </a>
        <a class="btn btn-outline-white" href="https://mdbootstrap.com/education/bootstrap/" target="_blank"
            role="button">Start
            free tutorial
            <i class="fas fa-graduation-cap ml-2"></i>
        </a>
    </div>

    <hr class="my-4">
    <div class="pb-4">
        <a href="https://www.facebook.com/mdbootstrap" target="_blank">
            <i class="fab fa-facebook-f mr-3"></i>
        </a>

        <a href="https://twitter.com/MDBootstrap" target="_blank">
            <i class="fab fa-twitter mr-3"></i>
        </a>

        <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
            <i class="fab fa-youtube mr-3"></i>
        </a>

        <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
            <i class="fab fa-google-plus-g mr-3"></i>
        </a>

        <a href="https://dribbble.com/mdbootstrap" target="_blank">
            <i class="fab fa-dribbble mr-3"></i>
        </a>

        <a href="https://pinterest.com/mdbootstrap" target="_blank">
            <i class="fab fa-pinterest mr-3"></i>
        </a>

        <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
            <i class="fab fa-github mr-3"></i>
        </a>

        <a href="http://codepen.io/mdbootstrap/" target="_blank">
            <i class="fab fa-codepen mr-3"></i>
        </a>
    </div>
    <div class="footer-copyright py-3">
        © 2019 Copyright:
        <a href="#" target="_blank"> Juncture </a>
    </div>

</footer>

<?php wp_footer(); ?>