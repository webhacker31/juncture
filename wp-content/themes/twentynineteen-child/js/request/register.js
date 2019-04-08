jQuery(document).ready(function ($) {

    $('#register .register-form .form-submit').on('click', function () {

        var username    = $('#register .register-form input[name="username"]').val(),
            password    = $('#register .register-form input[name="password"]').val(),
            role        = $('#register .register-form select[name="role"]').val(),
            referralID  = $('#register .register-form input[name="referral_id"]').val(),
            headID      = $('#register .register-form input[name="head_id"]').val(),
            position    = $('#register .register-form select[name="position"]').val();

        var regrequest = $.ajax({
            url: "/juncture/wp-content/themes/twentynineteen-child/response/register.php",
            method: "POST",
            data: {
                username : username,
                password : password,
                role : role,
                referral_id : referralID,
                head_id : headID,
                position : position
            },
            dataType: "JSON"
        });

        regrequest.done(function ( report ) {

            $('#register #registration_msg').remove();

            if (report['status'] == 'success') {

                $('#register').prepend('<div id="registration_msg" class="alert alert-success" role="alert">Registration Successful !</div>');

            } else if (report['status'] == 'failed') {

                $('#register').prepend('<div id="registration_msg" class="alert alert-danger" role="alert">Oops! Registration Fails. Please try again.<small style="display: block; font-size: 12px">' + report['message'] + '</small></div>');

            }

        });

        regrequest.fail(function( jqXHR, textStatus ) {
            
            $('#register #registration_msg').remove();

            $('#register').prepend('<div id="registration_msg" class="alert alert-danger" role="alert">Oops! Registration Fails. Please try again.<small style="display: block; font-size: 12px">' + textStatus + '</small></div>');

          });

    });

});