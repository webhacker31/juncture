<?php

/*
 Template Name: Home
 */

wp_head();

include_once( '_navbar.php' );

?>

<div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-1z" data-slide-to="1"></li>
        <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="view"
                style="background-image: url('wp-content/themes/twentynineteen-child/asset/images/bg-1.jpg'); background-repeat: no-repeat; background-size: cover;">
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
                style="background-image: url('wp-content/themes/twentynineteen-child/asset/images/bg-2.jpg'); background-repeat: no-repeat; background-size: cover;">
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
                style="background-image: url('wp-content/themes/twentynineteen-child/asset/images/bg-3.jpg'); background-repeat: no-repeat; background-size: cover;">
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
    <div class="product_showcase-list container">
        <div class="row align-items-center mb-3">
            <div class="col">
                <div class="product_img-wrapper">
                    <img class="img-fluid rounded" src="wp-content/themes/twentynineteen-child/asset/images/product-1.jpg" alt="Product #1">
                </div>
            </div>
            <div class="col">
                <p><strong><em>Lorem ipsum dolor sit amet</em></strong>, consectetur adipiscing elit. Fusce vestibulum imperdiet diam ut iaculis. Sed tempor consectetur sapien vel pulvinar. Curabitur eget viverra nibh, et suscipit lectus. Nam euismod elit et lorem pharetra placerat. Aliquam sit amet eros bibendum tellus efficitur laoreet eu in orci.</p>
            </div>
        </div>
        <div class="row align-items-center mb-3">
            <div class="col text-right">
                <p><strong><em>Quisque elit magna</em></strong>, sagittis ut purus quis, ullamcorper posuere odio. In hac habitasse platea dictumst. Fusce bibendum tempor quam, in sollicitudin nisi. Etiam interdum arcu et urna bibendum pretium.</p>
            </div>
            <div class="col">
                <div class="product_img-wrapper">
                    <img class="img-fluid rounded" src="wp-content/themes/twentynineteen-child/asset/images/product-2.jpg" alt="Product #1">
                </div>
            </div>
        </div>
        <div class="row align-items-center mb-3">
            <div class="col">
                <div class="product_img-wrapper">
                    <img class="img-fluid rounded" src="wp-content/themes/twentynineteen-child/asset/images/product-3.jpg" alt="Product #1">
                </div>
            </div>
            <div class="col">
                <p><strong><em>Phasellus nec lobortis tortor.</em></strong> Ut malesuada libero interdum dignissim molestie. Phasellus mattis convallis lacus, eget tincidunt justo congue sed. Vestibulum at auctor lacus, id imperdiet purus. Nunc volutpat est quis rutrum sollicitudin. Sed facilisis libero sed turpis placerat semper.</p>
            </div>
        </div>
        <div class="row align-items-center">
            <div class="col text-right">
                <p><strong><em>Pellentesque nunc risus</em></strong>, commodo vitae bibendum sit amet, lobortis id libero. Ut sagittis sed nisl sit amet ultricies. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean venenatis risus quam, quis lacinia sem sollicitudin at. Phasellus non suscipit elit, eu imperdiet lacus.</p>
            </div>
            <div class="col">
                <div class="product_img-wrapper">
                    <img class="img-fluid rounded" src="wp-content/themes/twentynineteen-child/asset/images/product-4.jpg" alt="Product #1">
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="page-footer text-center font-small mt-4 wow fadeIn">
    <div class="footer-copyright py-3">
        © 2019 Copyright:<a href="#" target="_blank"> Juncture</a>
    </div>
</footer>

<?php wp_footer(); ?>