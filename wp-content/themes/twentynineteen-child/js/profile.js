$( document ).ready( function() {

    var user_id = $user_id;

    $.ajax({
        method: 'GET',
        url: $home_url + '/request/regular-profile/',
        data: {
            user_id: user_id
        },
        success: function( response ) {

            var user_info = JSON.parse( response );
            
            $( '.user-id-input' ).val( user_info[ 0 ][ 'user_info_id' ] );
            $( '.username-input' ).val( user_info[ 0 ][ 'user_username' ] );
            $( '.user-pw-input' ).val( user_info[ 0 ][ 'user_password' ] );
            $( '.user-role-input' ).val( user_info[ 0 ][ 'user_role' ] );

        }
    })

});