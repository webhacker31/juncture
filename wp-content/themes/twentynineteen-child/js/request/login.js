$(document).ready(function ($) {

    $( '#login .login_form .form_login-submit' ).on( 'click', function () {

        var username    = $( '#login .login_form input[name="username"]' ).val(),
            password    = $( '#login .login_form input[name="password"]' ).val();

        var regrequest = $.ajax({
            url: $home_url + "/request/login/",
            method: "POST",
            data: {
                username : username,
                password : password
            },
            dataType: "JSON"
        });

        regrequest.done(function ( report ) {

            $('#login #login_msg').remove();
            
            switch( report[ 'status' ] ) {

                case 'Success':
                    window.location.href = $home_url + '/dashboard/?user_id=' + report[ 'user_id' ];
                    break;

                case 'Failed':
                    $( '#login' ).prepend( '<div id="login_msg" class="alert alert-danger" role="alert">Oops! Login Fails. Please try again.<small style="display: block; font-size: 12px">' + report['message'] + '</small></div>' );
                    break;

            }

        });

        regrequest.fail(function( jqXHR, textStatus ) {
            
            $( '#login #login_msg' ).remove();

            $( '#login' ).prepend( '<div id="login_msg" class="alert alert-danger" role="alert">Oops! Login Fails. Please try again.<small style="display: block; font-size: 12px">' + textStatus + '</small></div>' );

          });

    });

});