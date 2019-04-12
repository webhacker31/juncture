jQuery(document).ready(function ($) {

    $('#login .login-form .form-login-submit').on('click', function () {

        var username    = $('#login .login-form input[name="username"]').val(),
            password    = $('#login .login-form input[name="password"]').val();

        var regrequest = $.ajax({
            url: "/juncture/wp-content/themes/twentynineteen-child/response/login.php",
            method: "POST",
            data: {
                username : username,
                password : password
            },
            dataType: "JSON"
        });

        regrequest.done(function ( report ) {

            $('#login #login_msg').remove();

            if (report['status'] == 'success') {

                window.location.href = '/juncture/dashboard/';

            } else if (report['status'] == 'failed') {

                $('#login').prepend('<div id="login_msg" class="alert alert-danger" role="alert">Oops! Login Fails. Please try again.<small style="display: block; font-size: 12px">' + report['message'] + '</small></div>');

            }

        });

        regrequest.fail(function( jqXHR, textStatus ) {
            
            $('#login #login_msg').remove();

            $('#login').prepend('<div id="login_msg" class="alert alert-danger" role="alert">Oops! Login Fails. Please try again.<small style="display: block; font-size: 12px">' + textStatus + '</small></div>');

          });

    });

});