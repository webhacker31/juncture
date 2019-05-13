var $ = jQuery.noConflict();

$( document ).ready( function() {

    $( '#_logout' ).on( 'click', function() {

        console.log( 'Out' );

        var logout_request = $.ajax({
            url: "/juncture/wp-content/themes/twentynineteen-child/request/logout.php",
            method: "POST",
            data: {
                user_id : $( this ).data( 'user-id' )
            },
            dataType: "JSON"
        });

        logout_request.done(function ( report ) {

            if ( report[ 'status' ] == 'success' ) {

                window.location.href = '/juncture/';

            }

        });

    });

});