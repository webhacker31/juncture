$( document ).ready( function() {

    $.ajax({
        method: 'POST',
        url: $home_url + '/request/main-settings/',
        success: function( response ) {

            var set_groups = JSON.parse( response )

            $.each( set_groups, function( index, value ) {

                $( '#main_settings ._set-input-field[data-set-name=' + value[ 'set_name' ] + ']' ).val( value[ 'set_value' ] );
                $( '#main_settings ._set-input-field[data-set-name=' + value[ 'set_name' ] + ']' ).siblings( 'label' ).addClass( 'active' )

            });

        }

    });

    $( '#main_settings ._save-settings-btn' ).on( 'click', function() {

        var set_group_values = [];

        $( '._set-input-field' ).each( function() {

            var set_name_value = {
                'set_name' : $( this ).data( 'set-name' ),
                'set_value' : $( this ).val()
            };

            set_group_values.push( set_name_value );

        });

        $.ajax({
            method: 'POST',
            url: $home_url + '/request/update-main-settings/',
            data: {
                data: set_group_values
            },
            success: function( response ) {

                var response = JSON.parse( response )

                if( response[ 'status' ] == 'Success' ) location.reload();

            }

        });

    });

});