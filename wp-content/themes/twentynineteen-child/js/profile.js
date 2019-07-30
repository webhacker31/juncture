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

        var input_group_values = [];

        $( 'input' ).each( function() {

            var input_name_value = {
                'user_id': user_id,
                'input_name' : $( this ).attr( 'name' ),
                'input_value' : $( this ).val()
            };

            input_group_values.push( input_name_value );

        });

        $.ajax({
            method: 'POST',
            url: $home_url + '/request/update-regular-profile/',
            data: {
                data: input_group_values
            },
            success: function( response ) {

                var response = JSON.parse( response )

                console.log(response);

                // if( response[ 'status' ] == 'Success' ) location.reload();

            }

        });

    });

});