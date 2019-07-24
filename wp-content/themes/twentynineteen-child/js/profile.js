$( document ).ready( function() {

    var $user_id = $user_id;

    $.ajax({
        method: 'GET',
        url: $home_url + '/dashboard/profile/',
        data: {
            user_id: user_id
        },
        success: function( response ) {

            var user_info = JSON.parse( response );

            $( '.username-input' ).val( user_info[ 0 ][ 'user_username' ] );
            $( '#modalUserInfo .password' ).text( user_info[ 0 ][ 'user_password' ] );
            $( '#modalUserInfo .user-id' ).text( user_info[ 0 ][ 'user_info_id' ] );
            $( '#modalUserInfo .role' ).text( user_info[ 0 ][ 'user_role' ] );
            
            console.log( JSON.parse( response ) );

        }
    })

});