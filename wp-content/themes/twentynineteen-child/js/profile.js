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
            
            $( '#regular-profile .user-id-input' ).val( user_info[ 0 ][ 'user_info_id' ] );
            $( '#regular-profile .username-input' ).val( user_info[ 0 ][ 'user_username' ] );
            $( '#regular-profile .user-pw-input' ).val( user_info[ 0 ][ 'user_password' ] );
            $( '#regular-profile .user-role-input' ).val( user_info[ 0 ][ 'user_role' ] );

            $('#regular-profile input').siblings('label').addClass('active');

        }
    })

    $('#regular-profile ._edit-btn').on('click', function(){

        $('#regular-profile input').removeAttr('readonly');

        $('#regular-profile ._save-btn').removeAttr('disabled');

    });

    $( '#regular-profile ._save-btn' ).on( 'click', function() {

        var set_group_values = [];

        $( 'input' ).each( function() {

            var set_name_value = {
                'set_name' : $( this ).data( 'set-name' ),
                'set_value' : $( this ).val()
            };

            set_group_values.push( set_name_value );

        });

        $.ajax({
            method: 'POST',
            url: $home_url + '/request/update-regular-profile/',
            data: {
                data: set_group_values
            },
            success: function( response ) {

                var response = JSON.parse( response )

                console.log(response);

                if( response[ 'status' ] == 'Success' ) location.reload();

            }

        });

    });

});