var $ = jQuery.noConflict();

$( document ).ready( function() {

    $( '#_logout' ).on( 'click', function() {

        var logout_request = $.ajax({
            url:  $home_url + "/request/logout",
            method: "POST",
            data: {
                user_id : $( this ).data( 'user-id' )
            },
            dataType: "JSON"
        });

        logout_request.done(function ( report ) {

            if ( report[ 'status' ] == 'success' ) {

                window.location.href = $home_url;

            }

        });

    });

});