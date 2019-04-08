<?php

/*
 Template Name: 404
 */

$error_code = isset($_GET['error']) ? $_GET['error'] : 'page_not_found';

echo $error_code;

wp_head();

?>

<div id="404" class="d-flex justify-content-center align-items-center bg-light w-100 h-100">
    <div class="404-box bg-white p-5 rounded">

        <?php if ($error_code == 'direct_access') : ?>

            <h1>Permission Denied</p>

        <?php elseif ($error_code == 'page_not_found') : ?>

            <h1>Page Not Found</p>

        <?php endif; ?>

    </div>
</div>

<?php wp_footer(); ?>