$( document ).ready( function() {

    $( '.view-profile' ).on( 'click', function () {

        var user_id = $( 'table#_user-table-list tr.selected td:first-child' ).html();
        
        $('#modalUserInfo').modal();

        $.ajax({
            method: 'GET',
            url: $home_url + '/dashboard/profile/',
            data: {
                user_id: user_id
            },
            success: function( response ) {

                var user_info = JSON.parse( response );

                $( '#modalUserInfo .username' ).text( user_info[ 0 ][ 'user_username' ] );
                $( '#modalUserInfo .password' ).text( user_info[ 0 ][ 'user_password' ] );
                $( '#modalUserInfo .user-id' ).text( user_info[ 0 ][ 'user_info_id' ] );
                $( '#modalUserInfo .role' ).text( user_info[ 0 ][ 'user_role' ] );

            }
        })
        
    });

});